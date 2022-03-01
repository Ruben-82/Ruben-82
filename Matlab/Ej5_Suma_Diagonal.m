% matriz cuadrada de orden 4 x 4
A = [5 7 0;
    -1 4 3;
     0 2 5];
     
 renglones = 3;
 columnas = 3;

 % impresion de matriz usando 2 ciclos anidados
 
fprintf('Impresion de valores de su diagonal 3x3 \n');
acumulador=0;
suma=0;
for ren=1:1:renglones;
   for col=1:1:columnas;
     if(ren==col)
       fprintf(' %d ' , A  (ren,col))
       acumulador=A(ren, col);
       suma=suma+acumulador;
     end  
    end  
  end
  fprintf(' \n La suma es: ')
   fprintf('%d ', suma)