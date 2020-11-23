#variable de condicional
excepcion=1;

#tolerancia en caso de usar el while
tolerancia=0.001

#iteraciones en caso de usar el for en vez del while
#iteraciones=12;

#xbaja
#    x----------------------
xl=0;

#xsuperior
#   ------------------------x
xu=3;

#funcion
f='-(x-2)^2+6';

#cambiar al for en caso de realizarlo por numero de iteraciones
k=1
while excepcion>tolerancia
#for k=1 : iteraciones
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
    #imprimir en pantalla
    X = sprintf('k:(%d) xl:(%d) xu:(%d) a:(%d) b:(%d) x1:(%d) x2:(%d) f(x1):(%d) f(x2):(%d) excepcion:(%d)',k,xl,xu,a,b,x1(k),x2(k),fx1(k),fx2(k),excepcion);
    disp(X)
    if(fx1(k)>fx2(k))
        xl=x2(k);
        xu=xu;
    else
        xl=xl;
        xu=x1(k);
    end
    disp('--------------------------')
    k=k+1;;
end


    

