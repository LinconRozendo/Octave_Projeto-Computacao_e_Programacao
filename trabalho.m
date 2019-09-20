clc;
clear all;
close all;

x  = [0:0.1:100];
y  = 2+sin(x-8)
y1 = cbrt(x)

syms x1;

figure(1);
plot(x,y,"-r",'LineWidth',3);
title("Gráfico de 2 + sen(x-8).");
xlabel("Eixo X");
ylabel("Eixo Y");

figure(2);
plot(x,y1, "-b", 'LineWidth', 3);
title("Gráfico de ³V¯x.");
xlabel("Eixo X");
ylabel("Eixo Y");

figure(3);
plot(x, y,"-r",'LineWidth',2, x, y1, "-b", 'LineWidth', 4);
title("Gráfico das funções 2 + sen(x-8) e ³V¯x.");
legend('2 + sen(x-8) em vermelho.', '³V¯x em azul.');
xlabel("Eixo X");
ylabel("Eixo Y");

f1 = 2+sin(x1-8);
f2 = cbrt(x1);

diff(f1);
printf("\nResultado da derivada da função 2+sen(x-8): \n");
ans
printf("\nResultado da derivada da função ³V¯x(raíz cúbica de x) : \n");
diff(f2);
ans

f1 = cos(x-8);
f2 = 1/3*x.^(2/3);

figure(4);
plot(x,y,"-r",'LineWidth',2,x,f1, "-b", 'LineWidth',4);
title("Gráfico da função 2 + sen(x-8) e sua derivada.");
legend('2 + sen(x-8) em vermelho.', 'cos(x-8) em azul.');
xlabel("Eixo X");
ylabel("Eixo Y");

figure(5);
plot(x,y1,"-r",'LineWidth',2,x,f2, "-b", 'LineWidth',4);
title("Gráfico da função ³V¯x e sua derivada.");
legend('³V¯x em vermelho.', '1/3x²³ em azul.');
xlabel("Eixo X");
ylabel("Eixo Y");
