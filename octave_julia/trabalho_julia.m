clc;
close all;
clear all;

x = [1:0.1:101];

syms x1;

y1 = log(x);
y2 = (x.^2) - 1;

figure(1);
plot(x,y1,"-r",'LineWidth',1.5);
title("Grafico de ln(x)");
xlabel("X");
ylabel("Y");

figure(2);
plot(x, y2,"-k",'LineWidth', 2);
title("Grafico de (x²)-1");
xlabel("X");
ylabel("Y");


figure(3);
fplot("[log(x), (x^2)-1]", [1,101, 0,50]);
title("Grafico de ln(x) e x²-1 ");
xlabel("X");
ylabel("Y");


f1 = log(x1);
f2 = (x1.^2) - 1;

diff(f1);
ans
diff(f2);
ans

f1 = 1./x;
f2 = 2.*(x);

figure(4);
plot(x, y1,"-g",'LineWidth', 2, x, f1,"-b",'LineWidth', 3);
title("Grafico de ln(x) e da derivada de ln(x)");
xlabel("X");
ylabel("Y");
legend('Ln(x) - verde','1/x - azul');

figure(5);
fplot("[(x^2)-1, 2*(x)]", [1,101, 0,50]);
title("Grafico de x²-1 e da derivada de x²-1");
xlabel("X");
ylabel("Y");
