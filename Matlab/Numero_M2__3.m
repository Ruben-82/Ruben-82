% matriz cuadrada de orden 3 x 3

CERO = [0 0 0 0 0;
        0 0 0 0 0;
        0 0 0 0 0;
        0 0 0 0 0;
        0 0 0 0 0;
        0 0 0 0 0;
        0 0 0 0 0;
        0 0 0 0 0];
        
UNO  = [0 0 1 0 0;
        0 1 1 0 0;
        0 0 1 0 0;
        0 0 1 0 0;
        0 0 1 0 0;
        0 0 1 0 0;
        0 0 1 0 0;
        0 0 0 0 0];
     
DOS  = [0 1 1 1 0;
        1 0 0 0 1;
        0 0 0 0 1;
        0 0 1 1 0;
        0 1 0 0 0;
        1 0 0 0 0;
        1 1 1 1 1;
        0 0 0 0 0];
        
TRES = [0 1 1 1 0;
        0 0 0 0 1;
        0 0 0 0 1;
        0 0 1 1 0;
        0 0 0 0 1;
        0 0 0 0 1;
        0 1 1 1 1;
        0 0 0 0 0];        
        
CUATRO = [1 0 0 1 0;
          1 0 0 1 0;
          1 0 0 1 0;
          1 1 1 1 1;
          0 0 0 1 0;
          0 0 0 1 0;
          0 0 0 1 0;
          0 0 0 0 0];
          
CINCO = [0 1 1 1 1;
         0 1 0 0 0;
         0 1 0 0 0;
         0 1 1 1 1;
         0 0 0 0 1;
         0 0 0 0 1;
         0 1 1 1 1;
         0 0 0 0 0];
         
SEIS = [0 1 1 1 1;
        0 1 0 0 0;
        0 1 0 0 0;
        0 1 1 1 1;
        0 1 0 0 1;
        0 1 0 0 1;
        0 1 1 1 1;
        0 0 0 0 0];  
 
SIETE = [0 1 1 1 1;
         0 0 0 0 1;
         0 0 0 0 1;
         0 0 0 1 0;
         0 0 1 0 0;
         0 1 0 0 0;
         1 0 0 0 0;
         0 0 0 0 0]; 
         
OCHO = [0 1 1 1 1;
        0 1 0 0 1;
        0 1 0 0 1;
        0 1 1 1 1;
        0 1 0 0 1;
        0 1 0 0 1;
        0 1 1 1 1;
        0 0 0 0 0];  
 
NUEVE = [0 1 1 1 1;
         0 1 0 0 1;
         0 1 0 0 1;
         0 1 1 1 1;
         0 0 0 0 1;
         0 0 0 0 1;
         0 0 0 0 1;
         0 0 0 0 1]; 
     
INPUT = [0 1 1 1 1;
        0 1 0 0 0;
        0 1 0 0 0;
        0 1 1 1 1;
        0 1 0 0 1;
        0 1 0 0 1;
        0 1 1 1 1;
        0 0 0 0 0];   
     
     renglones =8;
     columnas= 5;
 
 % impresion de matriz UNO
 
 fprintf('impresion de matriz INPUT \n')
 
 for ren=1:renglones;
   for col=1:columnas;
       fprintf('%d ',INPUT(ren,col))
     end
     fprintf('\n');
   end 
   
fprintf('Algoritmo de MATCH perfecto vs CERO\n');
 ISCERO=1; %true  
   
   for ren=1:renglones;
     for col=1:columnas;
       if (CERO(ren, col)!= INPUT(ren, col))
         ISCERO=0;
         break;
       endif
     endfor
   endfor
   
   fprintf('% d \n', ISCERO);
   if (ISCERO = 1)
   fprintf('%d INPUT es CERO \n');
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
 
 fprintf('Algoritmo de MATCH perfecto vs TRES\n');
 ISTRES=1; %true  
   
   for ren=1:renglones;
     for col=1:columnas;
       if (TRES(ren, col)!= INPUT(ren, col))
         ISTRES=0;
         break;
       endif
     endfor
   endfor
   
   fprintf('% d \n', ISTRES);
   if (ISTRES = 1)
   fprintf('%d INPUT es TRES \n');
 end
 
 fprintf('Algoritmo de MATCH perfecto vs CUATRO\n');
 ISCUATRO=1; %true  
   
   for ren=1:renglones;
     for col=1:columnas;
       if (CUATRO(ren, col)!= INPUT(ren, col))
         ISCUATRO=0;
         break;
       endif
     endfor
   endfor
   
   fprintf('% d \n', ISCUATRO);
   if (ISCUATRO = 1)
   fprintf('%d INPUT es CUATRO \n');
 end
 
  fprintf('Algoritmo de MATCH perfecto vs CINCO\n');
 ISCINCO=1; %true  
   
   for ren=1:renglones;
     for col=1:columnas;
       if (CINCO(ren, col)!= INPUT(ren, col))
         ISCINCO=0;
         break;
       endif
     endfor
   endfor
   
   fprintf('% d \n', ISCINCO);
   if (ISCINCO = 1)
   fprintf('%d INPUT es CINCO \n');
 end
 
 fprintf('Algoritmo de MATCH perfecto vs SEIS\n');
 ISSEIS=1; %true  
   
   for ren=1:renglones;
     for col=1:columnas;
       if (SEIS(ren, col)!= INPUT(ren, col))
         ISSEIS=0;
         break;
       endif
     endfor
   endfor
   
   fprintf('% d \n', ISSEIS);
   if (ISSEIS = 1)
   fprintf('%d INPUT es SEIS \n');
 end
 
 fprintf('Algoritmo de MATCH perfecto vs SIETE\n');
 ISSIETE=1; %true  
   
   for ren=1:renglones;
     for col=1:columnas;
       if (SIETE(ren, col)!= INPUT(ren, col))
         ISSIETE=0;
         break;
       endif
     endfor
   endfor
   
   fprintf('% d \n', ISSIETE);
   if (ISSIETE = 1)
   fprintf('%d INPUT es SIETE \n');
 end
 
 fprintf('Algoritmo de MATCH perfecto vs OCHO\n');
 ISOCHO=1; %true  
   
   for ren=1:renglones;
     for col=1:columnas;
       if (OCHO(ren, col)!= INPUT(ren, col))
         ISOCHO=0;
         break;
       endif
     endfor
   endfor
   
   fprintf('% d \n', ISOCHO);
   if (ISOCHO = 1)
   fprintf('%d INPUT es OCHO\n');
 end
 
 fprintf('Algoritmo de MATCH perfecto vs NUEVE\n');
 ISNUEVE=1; %true  
   
   for ren=1:renglones;
     for col=1:columnas;
       if (NUEVE(ren, col)!= INPUT(ren, col))
         ISNUEVE=0;
         break;
       endif
     endfor
   endfor
   
   fprintf('% d \n', ISNUEVE);
   if (ISNUEVE = 1)
   fprintf('%d INPUT es NUEVE \n');
 end