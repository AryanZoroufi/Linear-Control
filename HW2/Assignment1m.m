clear; clc; close all;
commandwindow;
s = tf('s');
sysg2 = 2/ ((s + 2) *  (s + 8));
sysh = 0.2;
tf_eq1 = feedback(sysg2, sysh);
sysg1 = 4;
sysg3 = 1 / s;
System = tf_eq1 * sysg1 * sysg3;