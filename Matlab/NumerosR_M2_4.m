UNO  = [0 1 1 1 0;
        0 0 1 0 0;
        0 0 1 0 0;
        0 0 1 0 0;
        0 0 1 0 0;
        0 0 1 0 0;
        0 1 1 1 0;
        0 0 0 0 0];
     
DOS  = [1 1 1 1 1;
        0 1 0 1 0;
        0 1 0 1 0;
        0 1 0 1 0;
        0 1 0 1 0;
        0 1 0 1 0;
        1 1 1 1 1;
        0 0 0 0 0];
        
DIEZ = [0 0 0 0 0;
        1 0 0 0 1;
        0 1 0 1 0;
        0 0 1 0 0;
        0 1 0 1 0;
        1 0 0 0 1;
        0 0 0 0 0;
        0 0 0 0 0];  
         
CINCUENTA = [0 1 0 0 0;
             0 1 0 0 0;
             0 1 0 0 0;
             0 1 0 0 0;
             0 1 0 0 0;
             0 1 0 0 0;
             0 1 1 1 1;
             0 0 0 0 0];  
 
MIL = [0 0 0 0 0;
       1 0 0 0 1;
       1 1 0 1 1;
       1 0 1 0 1;
       1 0 0 0 1;
       1 0 0 0 1;
       1 0 0 0 1;
       0 0 0 0 0]; 

     
INPUT = [0 0 0 0 0;
         1 0 0 0 1;
         1 1 0 1 1;
         1 0 1 0 1;
         1 0 0 0 1;
         1 0 0 0 1;
         1 0 0 0 1;
         0 0 0 0 0];    
     
     renglones =8;
     columnas= 5;               
            
fprintf('impresion de matriz INPUT \n')
 
 for ren=1:renglones;
   for col=1:columnas;
       fprintf('%d ',INPUT(ren,col))
     end
     fprintf('\n');
   end

fprintf('Algoritmo de MATCH perfecto vs UNO\n');
 ISUNO=1; %true  
   
   for ren=1:renglones;
     for col=1:columnas;
       if (UNO(ren, col)!= INPUT(ren, col))
         ISUNO=0;
         break;
       endif
     endfor
   endfor
   
   fprintf('% d \n', ISUNO);
   if (ISUNO = 1)
   fprintf('%d INPUT es CERO \n');
 end 
 
 fprintf('Algoritmo de MATCH perfecto vs DOS\n');
 ISDOS=1; %true  
   
   for ren=1:renglones;
     for col=1:columnas;
       if (DOS(ren, col)!= INPUT(ren, col))
         ISDOS=0;
         break;
       endif
     endfor
   endfor
   
   fprintf('% d \n', ISDOS);
   if (ISDOS = 1)
   fprintf('%d INPUT es DOS \n');
 end  
 
 fprintf('Algoritmo de MATCH perfecto vs DIEZ\n');
 ISDIEZ=1; %true  
   
   for ren=1:renglones;
     for col=1:columnas;
       if (DIEZ(ren, col)!= INPUT(ren, col))
         ISDIEZ=0;
         break;
       endif
     endfor
   endfor
   
   fprintf('% d \n', ISDIEZ);
   if (ISDIEZ = 1)
   fprintf('%d INPUT es DIEZ \n');
 end 
 
 fprintf('Algoritmo de MATCH perfecto vs CINCUENTA\n');
 ISCINCUENTA=1; %true  
   
   for ren=1:renglones;
     for col=1:columnas;
       if (CINCUENTA(ren, col)!= INPUT(ren, col))
         ISCINCUENTA=0;
         break;
       endif
     endfor
   endfor
   
   fprintf('% d \n', ISCINCUENTA);
   if (ISCINCUENTA = 1)
   fprintf('%d INPUT es CINCUENTA \n');
 end 
 
 fprintf('Algoritmo de MATCH perfecto vs MIL\n');
 ISMIL=1; %true  
   
   for ren=1:renglones;
     for col=1:columnas;
       if (MIL(ren, col)!= INPUT(ren, col))
         ISMIL=0;
         break;
       endif
     endfor
   endfor
   
   fprintf('% d \n', ISMIL);
   if (ISMIL = 1)
   fprintf('%d INPUT es MIL \n');
 end 