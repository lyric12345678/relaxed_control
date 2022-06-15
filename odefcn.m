function dxdt = odefcn(t,x)
dxdt = zeros(1,1);
t
%% Dynamics of the system
if x>0
    u=x+1;
else
    if x<0
        u=x-1;
    else
        u=rand(1);
    end
    
end

if u>=1
    g_u=1-u;
else
    if u<=-1
        g_u=-1-u;
    else
        g_u=0;
    end
end

dxdt=g_u;                           %Note that u is essentially the wheel force

end