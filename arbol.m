function [Va,Ea,blossom]=arbol(n,m,vl,K,E)
fin = (0~=0);
v = vl(1);
Va = [0,0];
Va = [v 0;Va];
Vp = [v,0];
Ea = [0,0];
while(~fin)
   stop = (0~=0);
   blossom = (0~=0);
   if(vl(1)~=0)
      B = [0,0];
      for i=1:m
         if(XOR(espar(E(i,1),Vp),espar(E(i,2),Vp)))
            if((espar(E(i,1),Vp))&(~enarbol(E(i,2),Va)))
               B = [E(i,:);B];
            elseif((espar(E(i,2),Vp))&(~enarbol(E(i,1),Va)))
               B = [E(i,:);B];
            end
         end
      end
      j = 1;
      while(B(j,1)~=0)
         if((~enarbol(B(j,1),Va))&(eslibre(B(j,1),vl)))
            fin = (0==0);
            Va = [B(j,1) 0;Va];
            Ea = [B(j,:);Ea];
            mu = cadena(v,B(j,1),Ea);
            Ea = mu;
         elseif((~enarbol(B(j,2),Va))&(eslibre(B(j,2),vl)))
            fin = (0==0);
            Va = [B(j,2) 0;Va];
            Ea = [B(j,:);Ea];
            mu = cadena(v,B(j,2),Ea);
            Ea = mu;
         else
            j = j + 1;
         end
      end
      if(~fin)
         j = 1;
         while((B(j,1)~=0)&(~stop))
            pareja1 = pareja(B(j,1),K);
            pareja2 = pareja(B(j,2),K);
            if((~enarbol(B(j,1),Va))&(pareja1~=0)&(~enarbol(pareja1,Va)))
               Va = [B(j,1) 0;pareja1 0;Va];
               Vp = [pareja1,Vp];
               Ea = [B(j,:);B(j,1) pareja1;Ea];
               stop = (0==0);
            elseif((~enarbol(B(j,2),Va))&(pareja2~=0)&(~enarbol(pareja2,Va)))
               Va = [B(j,2) 0;pareja2 0;Va];
               Vp = [pareja2,Vp];
               Ea = [B(j,:);B(j,2) pareja2;Ea];
               stop = (0==0);
            end
            j = j + 1;
         end
      end
      if((~stop)&(~fin))
         p = 1;
         while((Ea(p,1)~=0)&(~blossom))
            if((espar(Ea(p,1),Vp))&(espar(Ea(p,2),Vp)))
               blossom = (0==0);
               mu1 = cadena(v,E(p,1),Ea);
               mu2 = cadena(v,E(p,2),Ea);
               vb = difsim(mu1,mu2);
               vb = [vb;Ea(p,:);0 0];
               q = 1;
               while(vb(q,1)~=0)
                  q = q + 1;
               end
               q = q - 1;
               vmu = vb(1,1);
               for j=2:q
                  if(vb(j,1)<vmu)
                     vmu = vb(j,1);
                  end
                  if(vb(j,2)<vmu)
                     vmu = vb(j,2);
                  end
               end
               r = 0;
               Ar(1,:) = [0,0];
               for i=1:m
                  if(enblos(E(j,1),vb))
                     if(~enblos(E(j,2),vb))
                        r = r + 1;
                        Ar = [vmu E(j,2);Ar];
                     end
                  elseif(enblos(E(j,2),vb))
                     r = r + 1;
                     Ar = [vmu E(j,1);Ar];
                  else
                     r = r + 1;
                     Ar = [E(j,:);Ar];
                  end
               end
               K1 = edmonds(q,r,Ar);
               y = 1;
               while((K1(y,1)~=0)&(K1(y,1)~=vmu)&(K1(y,2)~=vmu))
                  y = y + 1;
               end
               if(K1(y,1)==vmu)
                  K3 = nuevo(vb,K1(y,2));
               elseif(K1(y,2)==vmu)
                  K3 = nuevo(vb,K(y,1));
               else
                  K3 = nuevo(vb,0);
               end
               Ea = [K1,K3];
            else
               p = p + 1;
            end
         end
      end
      if((~stop)&(~fin)&(~blossom))
         Ea = [0,0];
         fin = (0==0);
      end 
   end
end