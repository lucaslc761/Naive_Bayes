classificacao = load ("classificacao.dat");

[m n] = size(classificacao);

%---------||---------||---------||---------||---------||---------||----------%
valor1 = 0;

q0=0;
q1=0;
%calcula quantidade de target 0%
for t = 1:m
    if(classificacao(t,5)==0)
        q0= q0+1;
    endif
endfor
%calcula quantidade de target 1%
q1=m-q0;

%----------------------------------------------------------------------------%
%calcula quantidade do sexo F e M%
qF=0;
qFS=0;
qFN=0;
qM=0;
qMS=0;
qMN=0;
for t = 1:m
      if(classificacao(t,1)==1)
         qF= qF+1;
      endif
      if(classificacao(t,1)==1 && classificacao(t,5)==1)
         qFS= qFS+1;
      endif      
endfor
qFN = qF-qFS;
qM  = m - qF;

for t = 1:m
      if(classificacao(t,1)==2 && classificacao(t,5)==1)
         qMS= qMS+1;
      endif      
endfor
qMN= qM-qMS;

%----------------------------------------------------------------------------%
qida=0;
qidaS=0;
qidb=0;
qidbS=0;
qidc=0;
qidcS=0;
qidd=0;
qiddS=0;
qide=0;
qideS=0;
%calcula quantidade da idade a, b, c, d, e%
for t = 1:m
    if(classificacao(t,2)==1)
         qida = qida + 1;
    endif
    if(classificacao(t,2)==1 && classificacao(t,5)==1)
         qidaS = qidaS + 1;
    endif 
    
    if(classificacao(t,2)==2)
         qidb = qidb + 1;
    endif
    if(classificacao(t,2)==2 && classificacao(t,5)==1)
         qidbS = qidbS + 1;
    endif
    
    
    if(classificacao(t,2)==3)
         qidc = qidc + 1;
    endif
    if(classificacao(t,2)==3 && classificacao(t,5)==1)
         qidcS = qidcS + 1;
    endif
    
    
    if(classificacao(t,2)==4)
         qidd = qidd + 1;
    endif
    if(classificacao(t,2)==4 && classificacao(t,5)==1)
         qiddS = qiddS + 1;
    endif
    
    
    if(classificacao(t,2)==5)
         qide = qide +1
    endif
    if(classificacao(t,2)==5 && classificacao(t,5)==1)
         qideS = qideS + 1;
    endif
    
endfor
qidaN = 0; 
qidaN = qida - qidaS;
qidbN = 0; 
qidbN = qidb - qidbS;
qidcN = 0; 
qidcN = qidc - qidcS;
qiddN = 0; 
qiddN = qidd - qiddS;
qideN = 0; 
qideN = qide - qideS;
%----------------------------------------------------------------------------%

qfund=0;
qfundS=0;
qfundN=0;
qmed=0;
qmedS=0;
qmedN=0;
qsup=0;
qsupS=0;
qsupN=0;
qpos=0;
qposS=0;
qposN=0;
%calcula quantidade da escolaridade fundamental, medio, superio e pos-graduado%
for t = 1:m
    if(classificacao(t,3)==1)
         qfund = qfund + 1;
    endif
    if(classificacao(t,3)==1 && classificacao(t,5)==1)
         qfundS = qfundS + 1;
    endif
    
    
    if(classificacao(t,3)==2)
         qmed = qmed+1;
    endif
    if(classificacao(t,3)==2 && classificacao(t,5)==1)
         qmedS = qmedS + 1;
    endif
    
    
    if(classificacao(t,3)==3)
         qsup = qsup+1;
    endif
    if(classificacao(t,3)==3 && classificacao(t,5)==1)
         qsupS = qsupS + 1;
    endif
    
    
    if(classificacao(t,3)==4)
         qpos = qpos+1;
    endif
    if(classificacao(t,3)==4 && classificacao(t,5)==1)
         qposS = qposS + 1;
    endif 
    
    
endfor
qfundN = qfund - qfundS ;
qmedN = qmed - qmedS;
qsupN = qsup - qsupS;
qposN = qpos - qposS;
%-----------------------------------------------------------------------------%

qempra=0;
qempraN=0;
qempraS=0;
qemprb=0;
qemprbN=0;
qemprbS=0;
qemprc=0;
qemprcN=0;
qemprcS=0;
qemprd=0;
qemprdN=0;
qemprdS=0;
qempre=0;
qempreN=0;
qempreS=0;
%calcula quantidade de emprego a, b, c, d, e%
for t = 1:m
    if(classificacao(t,4)==1)
         qempra = qempra + 1;
    endif
    if(classificacao(t,4)==1 && classificacao(t,5)==1)
         qempraS = qempraS + 1;
    endif
    
    
    if(classificacao(t,4)==2)
         qemprb = qemprb + 1;
    endif
    if(classificacao(t,4)==2 && classificacao(t,5)==1)
         qemprbS = qemprbS + 1;
    endif
    
    
    if(classificacao(t,4)==3)
         qemprc = qemprc + 1;
    endif
    if(classificacao(t,4)==3 && classificacao(t,5)==1)
         qemprcS = qemprcS + 1;
    endif
    
    
    if(classificacao(t,4)==4)
         qemprd = qemprd + 1;
    endif
    if(classificacao(t,4)==4 && classificacao(t,5)==1)
         qemprdS = qemprdS + 1;
    endif
    
    
    if(classificacao(t,4)==5)
         qempre = qempre +1;
    endif
    if(classificacao(t,4)==5 && classificacao(t,5)==1)
         qempreS = qempreS + 1;
    endif  
    
endfor
qempraN = qempra - qempraS;
qemprbN = qemprb - qemprbS;
qemprcN = qemprc - qemprcS;
qemprdN = qemprd - qemprdS;
qempreN = qempre - qempreS;

pe1S=0;
pe2S=0;
pe3S=0;
pe4S=0;
pe1N=0;
pe2N=0;
pe3N=0;
pe4N=0;

qS= q1/m;
qN= q0/m;
valor1=0;
res=0;

erro=0;

v1=0;
v2=0;

pe1S = 0;
pe2S = 0;
pe3S = 0;
pe4S = 0;

pe1N = 0;
pe2N = 0;
pe3N = 0;
pe4N = 0;

tx_acerto = (1:9);
tx_acerto_c1 =(1:9);
tx_acerto_c0 =(1:9);

media = 0;
media_min = 0;
media_max = 0;

q_teste1 = 0;
q_teste0 = 0;



%t_rodadas = 0;
%primeiro for para rodar a porcertagem%
for prop = 1:9
    valor1 = valor1 + 0.1;
    
    %segundo para as rodadas de cada porcertagem%
    q_acerto1 = 0;
    q_acerto0 = 0;
    q_acerto=0;
    t_rodadas=0;
    for i = 1:30
       
           A = randperm(1000);
           d_testese = classificacao(A,:);
            
           v1= 1000*valor1
           v2= v1+1;,
           d_teste = d_testese(1:v1,:);
           %d_treinamento = d_testese(v2:m,:);
           
           %calcular o P(N|eventos) e o P(S|eventos)
           for teste = 1:v1 
              if(d_teste(teste, 1) == 1 )
                  pe1S = qFS/q1;
                  pe1N = qFN/q0 ;
                  
              endif
                 
              if(1 == 1 && d_teste(teste, 1) == 2 )
                     pe1S= qMS/q1;
                     pe1N= qMN/q0;
              endif

              %Verificar qual o valor na 2 2 e calcula o p do evento
              if(d_teste(teste, 2) == 1 )
                  pe2S= qidaS/q1;
                  pe2N= qidaN/q0;
                  elseif(d_teste(teste, 2) == 2 )
                      pe2S= qidbS/q1;
                      pe2N= qidbN/q0;
                  elseif(d_teste(teste, 2) == 3 )
                      pe2S= qidcS/q1;
                      pe2N= qidcN/q0;
                  elseif(d_teste(teste, 2) == 4 )
                      pe2S= qiddS/q1;
                      pe2N= qiddN/q0;
                  elseif(d_teste(teste, 2) == 5 )
                      pe2S= qideS/q1;
                      pe2N= qideN/q0;
              endif

              
              %Verificar qual o valor na coluna 3 e calcula o p do evento
              if(d_teste(teste, 3) == 1 )
                  pe3S= qfundS/q1;
                  pe3S= qfundN/q1;
                  elseif( d_teste(teste, 3) == 2 )
                      pe3S= qmedS/q1;
                      pe3N= qmedN/q1;
                  elseif(d_teste(teste, 3) == 3 )
                      pe3S= qsupS/q1;
                      pe3N= qsupN/q1;
                  elseif(d_teste(teste, 3) == 4 )
                      pe3S= qposS/q1;
                      pe3N= qposN/q1;
              endif
              
              %Verificar qual o valor na coluna 4 e calcula o p do evento
              if(d_teste(teste, 4) == 1 )
                  pe4S= qempraS/q1;
                  pe4N= qempraN/q0;
                  elseif(d_teste(teste, 4) == 2 )
                      pe4S= qemprbS/q1;
                      pe4N= qemprbN/q0;
                  elseif(d_teste(teste, 4) == 3 )
                      pe4S= qemprcS/q1;
                      pe4N= qemprcN/q0;
                  elseif(d_teste(teste, 4) == 4 )
                      pe4S= qemprdS/q1;
                      pe4N= qemprdN/q0;
                  elseif(d_teste(teste, 4) == 5 )
                      pe4S= qempreS/q1;
                      pe4N= qempreN/q0;
              endif
                
                PdeS = pe1S * pe2S * pe3S * pe4S * qS;
                        
                PdeN = pe1N * pe2N * pe3N * pe4N * qN;
              
              if(PdeS > PdeN)
                  res=1;
              else
                  res=0;
                  erro=erro+1;
              endif
              
              if(d_teste(teste,5) == 1)
                 q_teste1 = q_teste1 + 1;
              else   
                 q_teste0 = q_teste0 + 1;
              endif
              
              if(res==d_teste(teste,5) && res==1)
                  q_acerto = q_acerto + 1;
                  q_acerto1 = q_acerto1 + 1;
              elseif(res==d_teste(teste,5) && res==0)
                  q_acerto = q_acerto + 1;
                  q_acerto0 = q_acerto0 + 1;
              endif
              t_rodadas = t_rodadas + 1;  
       endfor    
    endfor
        media_c1 = q_acerto1/q_teste1;
        media_c0 = q_acerto0/q_teste0;
        media = q_acerto/t_rodadas;
        tx_acerto(prop)=media;
        tx_acerto_c1(prop) = media_c1;
        tx_acerto_c0(prop) = media_c0 ;
 
 
endfor
        
        
        
        figure(1);
        hold on;
        grid on;
        plot(tx_acerto,'g', 'LineWidth', 2);  
        plot(tx_acerto_c0,'r', 'LineWidth', 2); 
        plot(tx_acerto_c1,'k', 'LineWidth', 2); 

media_min = tx_acerto(1);
media_max = tx_acerto(1);

for prop = 1:9
    if(tx_acerto(prop) < media_min)
        media_min = tx_acerto(prop);
    endif
    if(tx_acerto(prop) > media_max)
        media_max = tx_acerto(prop);
    endif
endfor

%plot(q_acerto,'b');    
%d_teste2 = d_testes1e(1:70,:);
%d_treinamento2 = d_testes1e(71:701,:);
