clear, clc

trueno = [-1	-1	1	1	-1	-1	-1	-1 -1	1	1	-1	-1	-1	-1	-1 1	1	-1	-1	-1	-1	-1	-1 1	-1	-1	-1	-1	-1	-1	-1 1	1	1	1	1	1	1	1 -1	1	1	1	1	1	1	1 -1	-1	-1	-1	-1	1	1	-1 -1	-1	-1	-1	1	1	-1	-1 -1	-1	-1	1	1	-1	-1	-1 -1	-1	1	1	-1	-1	-1	-1 ];                                                                                          

copo = [1	-1	-1	-1	-1	-1	-1	1 -1	1	-1	-1	-1	-1	1	-1 -1	-1	1	-1	-1	1	-1	-1 -1	-1	-1	1	1	-1	-1	-1 1	1	1	1	1	1	1	1 1	1	1	1	1	1	1	1 -1	-1	-1	1	1	-1	-1	-1 -1	-1	1	-1	-1	1	-1	-1 -1	1	-1	-1	-1	-1	1	-1 1	-1	-1	-1	-1	-1	-1	1 ];

nube = [-1	-1	-1	1	1	-1	-1	-1 -1	-1	-1	1	1	1	-1	-1 -1	-1	1	1	1	1	1	-1 -1	1	1	1	1	1	1	-1 1	1	1	1	1	1	1	1 1	1	1	1	1	1	1	1 1	1	1	1	1	1	1	1 1	1	1	1	1	1	1	1 1	1	1	1	1	1	1	1 1	1	1	1	1	1	1	1 ];

paraguas = [ -1	-1	-1	1	1	-1	-1	-1 -1	-1	1	1	1	1	-1	-1 -1	1	1	1	1	1	1	-1 1	-1	1	1	1	1	-1	1 -1	-1	-1	1	1	-1	-1	-1 -1	-1	-1	1	1	-1	-1	-1 -1	-1	-1	1	1	-1	-1	-1 -1	-1	-1	1	1	-1	-1	-1 -1	-1	-1	1	1	-1	-1	-1 -1	-1	1	1	1	-1	-1	-1 ];

cruz = [-1	-1	-1	-1	1	-1	-1	-1 -1	-1	-1	1	1	1	-1	-1 -1	-1	-1	-1	1	-1	-1	-1 -1	-1	-1	-1	1	-1	-1	-1 -1	-1	-1	-1	1	-1	-1	-1 -1	-1	1	1	1	1	1	-1 1	1	1	-1	-1	-1	1	1 1	1	1	-1	-1	-1	1	1 1	1	1	-1	-1	-1	1	1 -1	-1	1	1	1	1	1	-1 ];

viento = [1	-1	-1	-1	-1	-1	-1	-1 -1	1	-1	-1	-1	-1	-1	-1 -1	-1	1	-1	-1	1	1	-1 1	-1	-1	1	-1	-1	1	-1 -1	1	-1	-1	1	1	1	-1 -1	-1	1	-1	-1	-1	-1	-1 -1	-1	-1	1	-1	-1	1	1 -1	-1	-1	-1	1	-1	-1	1 -1	-1	-1	-1	-1	1	-1	1 -1	-1	-1	-1	-1	-1	1	1 ];

estrella = [-1	-1	-1	1	1	-1	-1	-1 -1	-1	1	1	1	1	-1	-1 1	1	1	1	1	1	1	1 1	1	1	1	1	1	1	1 -1	1	1	1	1	1	1	-1 -1	-1	1	1	1	1	-1	-1 -1	-1	1	1	1	1	-1	-1 -1	1	1	1	1	1	1	-1 1	1	1	-1	-1	1	1	1 1	1	-1	-1	-1	-1	1	1 ];


mul1 = trueno(:) * trueno(:)';

mul2 =  copo(:) * copo(:)';

mul3 = nube(:) * nube(:)';

mul4 = paraguas(:) * paraguas(:)';

mul5 = cruz(:) * cruz(:)';

mul6 = viento(:) * viento(:)';


mul9 = estrella(:) * estrella(:)';

w1 = mul1 + mul2 + mul3 + mul4 + mul5 + mul6 + mul9;

w=w1-diag(diag(w1));

%input(valor a encontrar)
x = trueno;

    %mul sum(w * x)

u0= x;
c=1;
ulast=x;

while (1)
  
   u0 = u0 * w;
   
    % aplicar funcion de activacion thresold
 
   for i=1:1:80
      if u0(i) > 0
        u0(i) = 1;
      else
        u0(i) = -1;
     endif
   endfor
 % c
  %u0
  %ulast

  if (u0 == ulast)
      fprintf('Resultado encontrado: \n\n');
          
          for i=1:80
            if (u0(i)) >0
              fprintf(' %d ', u0(i))
            else
              fprintf ('   ')
            endif
            
            if (mod(i,8)) == 0
              fprintf('\n')
            endif
          endfor
          fprintf('\n')
          
          fprintf('Resultado ingresado: \n\n');
          
          for i=1:80
            if (x(i))>0
              fprintf(' %d ', x(i))
            else
              fprintf ('   ')
            endif
            
            if (mod(i,8)) == 0
              fprintf('\n')
            endif
          endfor
          fprintf('\n')

        
      fprintf ('\n Matrices recorridas hasta hallar el resultado: %d \n', c);
     break;  
  endif
    
    c = c + 1;
    ulast = u0;
   
end









































































    