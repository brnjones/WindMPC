clear all; close all; set(0,'DefaultFigureWindowStyle','docked') 

% Problem Conditions
d.w=[0 0];          %wind (m/s)
d.rhoinit=180;      %Initial Trust Region (deg)
d.h=0.01;           %Initial timestep (T=N*h, 40*0.1=0.4 sec)
d.Vt=15;            %Airspeed (m/s)
d.g=9.8;            %Gravity (m/s^2)

%Problem Initial and Final State
x0=0; xf=150;       %Initial and final X position (m)
y0=0; yf=150;       %Initial and final Y position (m)
psi0=180; psif=-90; %Initial and Final Headings (deg)

%Pack initial and final state
d.x0=[x0; y0; psi0  *(pi/180)];
d.xf=[xf; yf; psif  *(pi/180)];

%% Call Solver Functions
[x(:,:,1), h(1), N(1), ITER(1), steps{1}, totaltime(1)]=project_solver(d);
%Set wind to 14 m/s
d.w=[14 0];
[x(:,:,2), h(2), N(2), ITER(2), steps{2}, totaltime(2)]=project_solver(d);

%% Perform final kinematic simulation
x_sim(:,1)=x(:,1); %Initialize simulation
for k=1:N-1
    x_sim(1,k+1) = d.h * (d.Vt * cos(x(3,k))+d.w(1)) + x_sim(1,k);
    x_sim(2,k+1) = d.h * (d.Vt * sin(x(3,k))+d.w(2)) + x_sim(2,k);
    x_sim(3,k+1) = d.h * (d.g/d.Vt) * x_sim(4,k)     + x_sim(3,k);
    x_sim(4,k+1) = d.h * x(5,k)                      + x_sim(4,k);
end

%% Print Figures
time(:,1)=(1:N)*h(1);
time(:,2)=(1:N)*h(2);

if (sum(d.w) == 0)
    suffix='_no_wind';
    plotstr2='b';
    plotstr='bx-';
else
    suffix='_wind';
    plotstr2='r'
    plotstr='rx-';
end

figure(1)
plot(x(1,:,1),x(2,:,1),'bx-')
hold on
plot(x(1,:,2),x(2,:,2),'rx-')
quiver(x(1,2:end,1),x(2,2:end,1), cos(x(3,2:end,1)),sin(x(3,2:end,1)),0.5,'b')
quiver(x(1,2:end,2),x(2,2:end,2), cos(x(3,2:end,2)),sin(x(3,2:end,2)),0.5,'r')
grid on
ylabel('meters')
xlabel('meters')
legend('No Wind', 'Wind 14 m/s -->', 'Location','best')
axis equal
eval(['print -depsc xyview.eps'])

figure(2)
ylabel('\psi, heading, deg')

subplot(3,1,1)
plot(time(:,1),x(4,:,1)*(180/pi),'bx-')
hold on
plot(time(:,2),x(4,:,2)*(180/pi),'rx-')
ylabel('\phi, bank angle, deg')
grid on

subplot(3,1,2)
plot(time(:,1),x(5,:,1)*(180/pi),'bx-')
hold on
plot(time(:,2),x(5,:,2)*(180/pi),'rx-')
grid on
ylabel('u, input, deg/sec')
hold on

subplot(3,1,3)
for k=2:N
    v(:,k,1)=(x(:,k,1)-x(:,k-1,1))/h(1);
    v(:,k,2)=(x(:,k,2)-x(:,k-1,2))/h(2);
end
grid on
plot(time(2:end,1),sqrt(v(1,2:end,1).^2+v(2,2:end,1).^2),'bx-')
hold on
plot(time(2:end,2),sqrt(v(1,2:end,2).^2+v(2,2:end,2).^2),'rx-')
ylim([0 30])
ylabel('Ground Speed, m/s')
xlabel('Seconds')
grid on
eval(['print -depsc state.eps'])

figure(3)
set(gcf,'Position', [100, 100, 1049, 400]);
plot(steps{1},'bx-')
hold on
plot(steps{2},'rx-')
xlabel('iteration # over h')
ylabel('CVXGEN Steps')
eval(['print -depsc computime.eps'])
grid on
hold on

%fganim;