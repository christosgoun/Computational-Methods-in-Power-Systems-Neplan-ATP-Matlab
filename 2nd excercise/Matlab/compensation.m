syms Y Is;
Tse=[1, 1+0.0035i; 0, 1];
Ttr=[0.133, 0; 0, 7.5];
Tpar=[0.9583+0.0127i, 22.8848+76.0542i; 0.0011i, 0.9583+0.0127i];
T_pre=Tse*Ttr*Tpar;
%A_pre = T_pre(1, 1)
%B_pre = T_pre(1, 2)
Tcom=[1 ,0 ;-i/2*pi*50*Y ,1];
Tfin=T_pre*Tcom;
V=[20;122];
I=[Is; 0];
calc=V==(Tfin*I);
solution=solve(calc, [Y, Is]);
Yfinal=double(solution.Y)