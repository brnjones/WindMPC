function [x, h, N, ITER, steps, totaltime] = project_solver(data)
tic
    %Set CVXGEN Solver Settings
    settings.verbose = 1;
    settings.max_iters = 25;
    settings.resid_tol = 1E-2;
    N=40;
    
    %Unpack problem data
    Vt = data.Vt;
    g = data.g;
    w = data.w;
    x0 = data.x0;
    xf = data.xf;
    h = data.h;
    rhoinit = data.rhoinit;
    phi_max = 45*(pi/180);
    u_max = 2;
        
    xi(:,1) = x0; xi(:,N) = xf;
    %%Initial trajectory guess, interpolated tajectory, straight line
    for k=2:N-1
        xi(:,k) = ((k-1)/(N-1))*(xi(:,N)-xi(:,1)) + xi(:,1);
    end

    %Misc Inits for SCP Loop
    N=40;
    T=N*h;
    done=0;
    MAXITER=1000;
    ITER=0;
    z=1;
    lastoptval=1E9;
    lastxerr=1E9;

    while(~done && ITER < MAXITER)
        infes = 0;
        rho(1:N) = rhoinit;

        %Iniial point
        xi(1:3,1)=x0; 
        xi(1:3,N)=xf;

        %Aircraft kinematic constraint matrices
        for k=1:N-1
            xhat = xi(3,k);
            a{k} =-h * Vt *  sin(xhat);
            b{k} = h * Vt * (cos(xhat)+sin(xhat)*xhat) + h*w(1);
            c{k} = h * Vt *  cos(xhat);
            d{k} = h * Vt * (sin(xhat)-cos(xhat)*xhat) + h*w(2);
            e{k} = h * (g/Vt); 
        end
        
        %Pack problem data for solver
        params.h = h;
        params.a = a;
        params.b = b;
        params.c = c;
        params.d = d;
        params.e = e;
        
        for k=1:N
            params.psi_hat{k} = xi(3,k);
            params.rho{k} = rho(k);
        end
        
        params.rho_0 = 180;
        params.psi_hat_0 = x0(3);
        params.phi_max = phi_max;
        params.u_max = u_max;
        params.phi0 = 0;
        params.phif = 0;
        params.u0  = 0;
        params.uf  = 0;
        params.x0 = x0;
        params.xf = xf;

        %Call CVXGEN Solver
        [vars,status] = csolve(params,settings);
        steps(ITER+1)=status.steps;
        
        %Unpack resulting trajectory
        for k=1:length(vars.x)
            x(1,k)=vars.x{k}(1);
            x(2,k)=vars.x{k}(2);
            x(3,k)=vars.x{k}(3);
        end
        
        x(4,:)=vars.phi;
        x(5,:)=vars.u;
    %%
        %See how approximate the convex optimization was:
        for k=1:N-1
            x_err(1,k+1) =-x(1,k+1) + h * (Vt * cos(x(3,k))+w(1)) + x(1,k);
            x_err(2,k+1) =-x(2,k+1) + h * (Vt * sin(x(3,k))+w(2)) + x(2,k);
            x_err(3,k+1) =-x(3,k+1) + h * (g/Vt) * x(4,k)         + x(3,k);
            x_err(4,k+1) =-x(4,k+1) + h *   x(5,k)                  + x(4,k);

            if (abs(x_err(1,k)+x_err(2,k)) < 0.1)
                rho(k) = min([rho(k) * 1.1, 180]); %it was good,increase trust
            else
                rho(k) = min([rho(k) * 0.75, 180]); %itw as bad,decrease trust
            end
        end
        %This is the logic that controls the SCP.
        if (status.converged == 0)
            disp('infeasible')
            h=h+0.01;
            z=0;
            x=xi;
            done=0;
        %If our approximation matches actual dynamics ok, and our optimum
        %value isn't decreasing
        elseif( (sum(abs(x_err(:)))) < 1 && (lastoptval - norm(x(:,4),1)) < 1)
                z=0;
                disp('Done')
                done=1;
                break;
        elseif( z < 10)  
            xi=x; %propigate trajectory forward.
            xlast=x; %save this as the last known feasible trajectory.
            lastoptval=norm(x(:,4),1);
            lastxerr=sum(abs(x_err(:)));
        else
            disp('reset')
            h=h+0.01;
            z=0;
        end
        ITER=ITER+1;
        z=z+1;
    end
    totaltime=toc;
end