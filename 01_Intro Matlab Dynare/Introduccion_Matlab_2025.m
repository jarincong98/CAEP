% ==========================================================================================================================================================
%   Introducción a Matlab
%    CAEP - Juan Andrés Rincón
%   Junio 2025
% ==========================================================================================================================================================

% ----------------------------------------------------------------------------------------------------------------------------------------------------------
%   Comandos y operaciones basicas
% ----------------------------------------------------------------------------------------------------------------------------------------------------------

%% Sección 1: Introducción
%   Comandos basicos para el inicio del codigo

clear all     % Borra todos los datos que aparecen en el Workspace
close all     % Cierra todas las figuras y ventanas extra abiertas
clc           % Borra todo lo que esta en el Command Window 

% Para hacer un comentario se utiliza el simbolo "%"

% Cuando no se esta seguro de lo que hace una función, se escribe en el
% Command Window "help (nombre de la función)" para una breve explicación

% Para una descripción detallada de la función, se escribe "doc (nombre de
% la función)"

% Para que lo que se escriba en el Editor no aparezca en el Command Window,
% se utiliza ";" al final de cada linea de codigo

% Para correr todo el codigo se utiliza el boton "Run" ubicado en la parte
% superior del Editor. Si se quiere correr solo una sección, se selecciona,
% se da click derecho y se escoge "Evaluate selection"

%Se debe tener cuidado al nombrar las variables, pues Matlab si hace una
%diferencia entre mayusculas y minusculas


%%  Sección 2: Operaciones basicas entre escalares

x=5;              %Se crea un escalar asignando un valor a una variable 
y=7;
w=2;

z=x*y;

u = sqrt(x)       %El comando "sqrt(_)" para sacar la raiz cuadrada 
t = w+z*x/y       % Matlab realiza primero las operaciones de multiplicación y división, y luego las de suma y resta. En este caso "t" y "t1" darian el mismo resultado, mientras que "t2" da diferente. 
t1=(w)+(z*x)/y    
t2=(w+z)*x/y      % Si se quiere definir que operaciones se van a realizar primero es necesario usar parentesis

%% 3. Operaciones basicas entre matrices

% El nombre de las matrices debe ser una letra, no puede ser un número

X = zeros(3,2);         % Arreglo de ceros de tamaño (N,M)       
Y = eye(3);             % Matriz identidad de tamaño N
U = ones(2,3)           % Arreglo de unos
V1 = rand(100,1)        % Arreglo de números uniformemente distribuidos (N,M)   
V2 = randn(100,1);       % Arreglo de n. normalmente distribuidos (N,M)
W1 = 1:0.5:10           % a:b:c secuencia de 'a' hasta 'c' en saltos de 'b'
W2 = linspace(1,10,19)  % Secuencia de 1 a 10 de 19 elementos equidistantes

c = max(V2)         % Elemento máximo de V2
d = min(V2)         % Elemento mínimo de V2

[n,m] = size(U)     % n = # de filas en U , m = # de columnas en U
t = length(U)       % tamaño de la dimensión más grande de U, al igual que max(size(U))

A = [1,2,3];        % De esta forma se crea un vector fila (Matriz 1x3)
B = [2;4;6];        % De esta forma se crea un vector columna (Matriz 3x1)
C = [1 2 ; 3 4];    
D = [5 6 ; 7 8];

% Para realizar las operaciones con matrices es importante tener en cuenta
% que estan sean conformables, es decir que el numero de columnas de la
% primera matriz debe coincidir con el numero de filas de la segunda matriz
 

E  = A';            % Matriz transpuesta
F  = inv(C);        % Matriz inversa
E  = A + B;         % Suma
G  = A - B;         % Resta
I  = A * B;         % Multiplicación
J  = A .* B;        % Multiplicación elemento por elemento 
K  = A' / B;        % Formalmente no hay división, esto expresa multiplicación por la matriz inversa
K1 = D * inv(C);    % Otra forma de expresar la multiplicación por la matriz inversa
K2 = inv(C) * D;
L2 = A' \ B;        % Debe Invertir la matriz precedente para realizar la operación
M  = A ./ B;        % División elemento por elemento
O1 = C^2;           % Matriz al cuadrado (C*C) 
O2 = C * C;
P  = A .^ 2;        % Exponencial elemento por elemento
Q  = sqrtm(D)      % Raiz cuadrada


H  = [A B'];        % De esta forma se crea un vector fila a partir de un vector fila x un vector columna transpuesto 
H1 = [A;B'];        % De esta forma se crea una matriz 2x3 a partir de un vector fila x un vector columna transpuesto 
H2 = [A' B];        % De esta forma se crea una matriz 3x2 a partir de un vector fila transpuesto x un vector columna
H3 = [A';B];        % De esta forma se crea un vector columna a partir de un vector fila transpuesto x un vector columna

N1=H2(4)            % Para ubicar el valor de la cuarta posición en la matriz (o vector). Matlab cuenta la posicion por columnas de arriba hacia abajo
N2=H1(2,1)          % Si se quiere ser mas especificio, se escribe primero la posicion de la fila y luego la de la columna
R1 = M(1:2,:)       % Selecciona elementos de la primera fila, incluyendo todas las columnas de la matriz Q
R2 = M(3:end,:)     % Selecciona elementos de la tercera fila hasta la última, incluyendo todas las columnas de la matriz Q
R3 = M(:,1:2)       % Selecciona elementos de la primera columna hasta la segunda columna , incluyendo todas las filas de la matriz Q
R4 = M(:,3:end)     % Selecciona elementos de de la tercera columna hasta la última, incluyendo todas las filas de la matriz Q

S = reshape(C,4,1)  % Transforma la matriz C 2x2 en un vector 4x1 (i.e. vectoriza la matriz)
T = repmat(P,1,4)   % Reproduce la matriz P con el mismo número de lineas (número 1) y 4 veces las columnas (número 4) 


%    NaN

a = 1:10:121        % Crea un vector que comience con 1 y termine en 121 e incremente de 10 en 10
b = 2:10:112        % Crea un vector que comience con 2 y termine en 112 e incremente de 10 en 10
b = [NaN b]         % Crea un valor no numerico para cubrir una posición dentro del vector 
c = [a' b']         % De esta forma se pueden relacionar las dos matrices con la ayuda del NaN, pues ahora son conformables

d  =c(:,1)+c(:,2)
d2 =c(2:10,1)+c(2:10,2)
d3 =c(2:end,1)+c(1:end-1,2)


%   Función "find"

W = [-2 3 6 7 -9 10]'   

% Si decimos que solo queremos encontrar los numeros positivos, la función "find" nos permite identificarlos y almacenar la posición de los datos que cumplen con este criterio 
index = find(Y > 0) 
% Z = Y(index,1) % "index" nos ayuda a encontrar los valores de los datos que estamos buscando

% Muchas veces se pueden encontrar datos que no corresponden a valores numericos (NaN)
% Podemos usar la función "find" junto con "isnan" para encontrar ese NaN 

AA = [3 NaN 6 8 2 NaN; 4 -1 6 -4 2 NaN]
index = find(isnan(AA))


% O usar "find" con "isfinite" para encontrar y excluir ese NaN

index = find(isfinite(AA))


% ----------------------------------------------------------------------------------------------------------------------------------------------------------
%   Loops y Condicionales
% ----------------------------------------------------------------------------------------------------------------------------------------------------------

X=[1 2 5 7 8 9 10 25; 3 8 7 2 345 252 644 9];
Y=[1 3 5 7 7 9 9 25; 3 8 7 2 344 252 646 8];

c1=zeros(2,8); % llenar con los elementos pares de X
c2=zeros(2,8); % llenar con 1 si el valor en X es = al valor en Y
c3=zeros(2,8); % llenar con 1 si el valor en X es > al valor en Y
c4=zeros(2,8); % llenar con 1 si el valor en X es diferente al valor en Y o 2 de lo contrario

% Con un Loop se puede ejecutar repetidamente un bloque de codigos. El comando "for" hace que un Loop se repita un numero especifico de veces.
% Para cada "for" se debe terminar con un "end" y para cada "if" tambien.
% El comando "if" se refiere al condicional 

for i=1:size(X,1)  % 1 se refiere a la dimensión filas. "i" es una variable que va desde el primer elemento de la fila hasta el ultimo.
    for j=1:size(X,2)  % 2 se refiere a la dimensión columnas. "j" es una variable que va desde el primer elemento de la columna hasta el ultimo.
        if mod(X(i,j),2)==0 %mod se refiere al residuo de la división, para especificar que debe ser igual a un valor se utiliza "=="
            c1(i,j)=X(i,j);
        end
        if X(i,j)==Y(i,j)
            c2(i,j)=1;
        end
        if X(i,j)>Y(i,j)
            c3(i,j)=1;
        end
        if X(i,j)~=Y(i,j)
            c4(i,j)=1;
        else
            c4(i,j)=2;
        end
        
    end
end








% ----------------------------------------------------------------------------------------------------------------------------------------------------------
% Plots and structures
% ----------------------------------------------------------------------------------------------------------------------------------------------------------

clear y
x = randn(100,1);

alpha = 0.5
beta = 2.3


for i = 1:length(x)   
    y(i,1) = alpha + beta*x(i);   
end



figure(1)              % Abre una pestaña nueva donde se muestra la figura.
l=plot(x,y,'k--')         % Muestra las propiedades del grafico. En conjunto ambos muestran el grafico.
title('Figure 1')   % Asigna un titulo al grafico
xlabel('x')         % Asigna un etiqueta al eje x
ylabel('y')         % Asigna un etiqueta al eje y
legend('y series','Location','South')  % Asigna una leyenda a la grafica 



data=struct();        % Crea estructuras que contienen todo tipo de datos  
data.independiente=x; % Para crear un objeto en la estructura de data es necesario poner data. y el nombre que uno quiera asignarle al objeto que uno quiere incluir
data.depentiente=y;

clear x y

figure(2)
plot(data.independiente,data.depentiente)
title('Figure 2')
xlabel('x')
ylabel('y')
legend('y series','Location','South')
print('Figura2','-djpeg')

