#iniciar excepcion con valor mayor a 1
excepcion=1;
#tolerancia al gusto del ejercicio o en caso de no tener colocar 0
tolerancia=0.001
#x inferior
xl=input('ingrese el x inferior');
#x superior
xu=input('ingrese el x superior');
#funcion
f=input('ingrese la  función');
k=1;
while excepcion>tolerancia
    #obtener distancias a y b
    a=0.618*(xu-xl);
    b=0.618^2*(xu-xl);
    #obtener x1 y x2
    x1(k)=xl+a;
    x2(k)=xl+b;
    #evaluar en f(x) a x1 y x2
    x=x1(k);
    fx1(k)=eval(f);
    x=x2(k);
    fx2(k)=eval(f);
    excepcion=abs(x2(k)-x1(k));
    #imprimir
    X = sprintf('k:(%d) xl:(%d) xu:(%d) a:(%d) b:(%d) x1:(%d) x2:(%d) f(x1):(%d) f(x2):(%d) excepcion:(%d)',k,xl,xu,a,b,x1(k),x2(k),fx1(k),fx2(k),excepcion);
    disp(X)
    #condicional para continuar
    if(fx1(k)>fx2(k))
        xl=x2(k);
        xu=xu;
    else
        xl=xl;
        xu=x1(k);
    end
    disp('--------------------------')
    k=k+1;
end