function K=emparej(n,m,vl,K0,E)
maximo = (0~=0);
KM = inicial(n,m,E);
while(~maximo)
   x = 1;
   u = [0];
   while(vl(x)~=0)
      if(~entrado(vl(x),K0))
         u = [vl(x),u];
      end
      x = x + 1;
   end
   vl = u;
   if((vl(1)==0)|(vl(2)==0))
      maximo = (0==0);
   else
      [Va,mu,blossom] = arbol(n,m,vl,K0,E);
      if((~blossom)&(mu(1,1)~=0))
         KT = difsim(K0,mu);
         K0 = KT;
      elseif(blossom)
         K0 = mu;
      else
         V = [0];
         E2 = [0,0];
         for i=1:m
            if((~enarbol(E(i,1),Va))&(~enarbol(E(i,2),Va)))
               if(~enV(E(i,1),V))
                  V = [E(i,1),V];
               end
               if(~enV(E(i,2),V))
                  V = [E(i,2),V];
               end
               E2 = [E(i,:);E2];
            elseif((~enarbol(E(i,1),Va))&(enarbol(E(i,2),Va)))
               if(~enV(E(i,1),V))
                  V = [E(i,1),V];
               end
            elseif((enarbol(E(i,1),Va))&(~enarbol(E(i,2),Va)))
               if(~enV(E(i,2),V))
                  V = [E(i,2),V];
               end
            end
         end
         m0 = 1;
         while(E2(m0,1)~=0)
            m0 = m0 + 1;
         end
         m0 = m0 - 1;
         K2 = [0,0];
         for j=1:m0
            vlib = estan(vl,V);
            if((~eslibre(E2(j,1),vlib))&(~eslibre(E2(j,2),vlib)))
               K2 = [E2(j,:);K2];
            end
         end
         KT = emparej(n,m0,vlib,K2,E2);
         r = 1;
         while(K0(r,1)~=0)
            if((~eslibre(K0(r,1),vl))&(~eslibre(K0(r,2),vl))&(~enK(K0(r,:),KT)))
               KT = [K0(r,:);KT];
            end
            r = r + 1;
         end
         K0 = KT;
      end
   end
   p = 1;
   para = (0~=0);
   while((K0(p,1)~=0)&(~para))
      if(~enK(K0(p,:),KM))
         para = (0==0);
      else
         p = p + 1;
      end
   end
   if(~para)
      maximo = (0==0);
   else
      KM = K0;
   end
end
K = K0;