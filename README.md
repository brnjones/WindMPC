EE364B Final Project
Fixed-Wing Aircraft Trajectory Generation Using Embedded Model Predictive Control

Main MATLAB File: prj_main.m

Solver function: project_solver.m calls CVXGEN (http://www.cvxgen.com)

See cvxgen/description.cvxgen for problem details.

Small, autonomous, fixed-wing aircraft are often deployed into environments where wind magnitudes are a significant portion of their operating airspeeds.  In this scenario, it is difficult to perform confident and predictable path-following within confined areas.  One common approach is to plan a trajectory offline, consisting of constant turn radii and straight line segments \cite{dubins}.  This is problematic in high winds, as the aircraft may not be able to achieve the desired turning radius at high speeds, leading to divergent path errors, flight outside of area boundaries, and possible collision with obstacles.  This project will implement a embedded Model Predictive Control (MPC) algorithm suitable for generating real-time trajectories that facilitate predictable and safe path following in the midst of significant wind.
