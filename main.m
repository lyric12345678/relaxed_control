clear all
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Objective: Relaxed Control
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x_initial=-1;
t_span=[0.01:0.01:10];
[x] = ode45(@odefcn,t_span,x_initial);

%% Ode45 plot
figure(1)
plot(x.x,x.y,'b--','linewidth',2)
set(gca,'FontSize',23)
set(gcf,'Position',[200,200,1000,800], 'color','w')
xlabel('t')
ylabel('x')
grid on




