clc;
clear all;
close all;

x  = [0:0.1:100];
y  = 2+sin(x-8)
y1 = cbrt(x)

syms x1;

figure(1);
plot(x,y,"-r",'LineWidth',3);
title("Gr塻ico de 2 + sen(x-8).");
xlabel("Eixo X");
ylabel("Eixo Y");

figure(2);
plot(x,y1, "-b", 'LineWidth', 3);
title("Gr塻ico de 覓矩.");
xlabel("Eixo X");
ylabel("Eixo Y");

figure(3);
plot(x, y,"-r",'LineWidth',2, x, y1, "-b", 'LineWidth', 4);
title("Gr塻ico das fun踥es 2 + sen(x-8) e 覓矩.");
legend('2 + sen(x-8) em vermelho.', '覓矩 em azul.');
xlabel("Eixo X");
ylabel("Eixo Y");

f1 = 2+sin(x1-8);
f2 = cbrt(x1);

diff(f1);
printf("\nResultado da derivada da fun誽o 2+sen(x-8): \n");
ans
printf("\nResultado da derivada da fun誽o 覓矩(ra瞵 cica de x) : \n");
diff(f2);
ans

f1 = cos(x-8);
f2 = 1/3*x.^(2/3);

figure(4);
plot(x,y,"-r",'LineWidth',2,x,f1, "-b", 'LineWidth',4);
title("Gr塻ico da fun誽o 2 + sen(x-8) e sua derivada.");
legend('2 + sen(x-8) em vermelho.', 'cos(x-8) em azul.');
xlabel("Eixo X");
ylabel("Eixo Y");

figure(5);
plot(x,y1,"-r",'LineWidth',2,x,f2, "-b", 'LineWidth',4);
title("Gr塻ico da fun誽o 覓矩 e sua derivada.");
legend('覓矩 em vermelho.', '1/3x眾 em azul.');
xlabel("Eixo X");
ylabel("Eixo Y");

