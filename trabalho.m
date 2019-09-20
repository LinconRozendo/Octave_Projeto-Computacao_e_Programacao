clc;
clear all;
close all;

x  = [0:0.1:100];
y  = 2+sin(x-8)
y1 = cbrt(x)

syms x1;

figure(1);
plot(x,y,"-r",'LineWidth',3);
title("Gr�fico de 2 + sen(x-8).");
xlabel("Eixo X");
ylabel("Eixo Y");

figure(2);
plot(x,y1, "-b", 'LineWidth', 3);
title("Gr�fico de �V�x.");
xlabel("Eixo X");
ylabel("Eixo Y");

figure(3);
plot(x, y,"-r",'LineWidth',2, x, y1, "-b", 'LineWidth', 4);
title("Gr�fico das fun��es 2 + sen(x-8) e �V�x.");
legend('2 + sen(x-8) em vermelho.', '�V�x em azul.');
xlabel("Eixo X");
ylabel("Eixo Y");

f1 = 2+sin(x1-8);
f2 = cbrt(x1);

diff(f1);
printf("\nResultado da derivada da fun��o 2+sen(x-8): \n");
ans
printf("\nResultado da derivada da fun��o �V�x(ra�z c�bica de x) : \n");
diff(f2);
ans

f1 = cos(x-8);
f2 = 1/3*x.^(2/3);

figure(4);
plot(x,y,"-r",'LineWidth',2,x,f1, "-b", 'LineWidth',4);
title("Gr�fico da fun��o 2 + sen(x-8) e sua derivada.");
legend('2 + sen(x-8) em vermelho.', 'cos(x-8) em azul.');
xlabel("Eixo X");
ylabel("Eixo Y");

figure(5);
plot(x,y1,"-r",'LineWidth',2,x,f2, "-b", 'LineWidth',4);
title("Gr�fico da fun��o �V�x e sua derivada.");
legend('�V�x em vermelho.', '1/3x�� em azul.');
xlabel("Eixo X");
ylabel("Eixo Y");
