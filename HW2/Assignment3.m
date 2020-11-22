clear; clc;
s = tf('s');
G1 = 1 / (s + 1);
G2 = 1 / s;
G3 = 1 / (s^2 + 2 * s + 3);
G4 = 1 / (s + 2);
G5 = (s + 10) / (s^2 + 3 * s);
G6 = 1 / (s^2 + 4 * s + 5);
model = append(G1, G2, G3, G4, G5, G6);
q=[1 -5 0 0 0;2 1 -4 0 0 ;3 2 6 0 0;4 3  0 0 0;5 3 0 0 0;6 0 0 0 0];
input=[1, 6]; output=3;
T=connect(model,q,input,output);
[num1,den1]=ss2tf(get(T, 'A'),get(T, 'B'),get(T, 'C'),get(T, 'D'), 1);
printsys(num1,den1,'s')
[num2,den2]=ss2tf(get(T, 'A'),get(T, 'B'),get(T, 'C'),get(T, 'D'), 2);
printsys(num2,den2,'s')