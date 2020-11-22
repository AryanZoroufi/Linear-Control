clear; clc; close all;
commandwindow;
s = tf('s');
G1 = (s + 2) / (5 * s^2 + 6 * s + 10);
G2 = (2 * s^2 + 3 * s + 5) / (s^3 + 2 * s^2 + s + 3);
series_system = series(G1, G2);
parallel_system = parallel(G1, G2);
append_system = append(G1, G2)
feedback_system = feedback(G1, G2);
