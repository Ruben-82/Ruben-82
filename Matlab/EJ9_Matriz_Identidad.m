A = [1 3 4 5;
     2 1 6 7;
     1 6 8 1;
     2 9 8 9];
     
orden = 4;

fprintf('Figura de la matriz: \n')

for ren =1:orden;
  for col =1:orden;
      fprintf('%d ',A(ren, col))
  endfor
  fprintf('\n')
endfor


fprintf('Transformando a Matriz Triangular inferior: \n')

for ren =1:orden;
  for col =1:orden;
      if (col != ren)
         A(ren, col) = 0;
      end  
      if (col == ren)
         A(ren,col) =1;
      end
      
      fprintf('%d ',A(ren, col))
  endfor
  fprintf('\n')
endfor