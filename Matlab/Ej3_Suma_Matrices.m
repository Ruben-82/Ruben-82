% matriz cuadrada de orden 3 x 3
A = [1 1;
     1 1];
     
B = [1 1;
     1 1];     
     
 renglones = 2;
 columnas = 2;

% impresion de matriz usando 2 ciclos anidados

fprintf('Impresion de las matrices A y B \n');

  for ren=1:renglones;
      for col=1:columnas;
        fprintf('%d ', A(ren, col))
   end
    fprintf('\n');
end

fprintf('\n')

  for ren=1:renglones;
      for col=1:columnas;
        fprintf('%d ', B(ren, col))
   end
    fprintf('\n');
end

c= A + B;

fprintf('Impresion de la suma de matrices \n');

  for ren=1:renglones;
      for col=1:columnas;
        fprintf( '%d ', c(ren, col))
    end
  fprintf('\n');
end