function mu=cadena(v,u,Ea)
landa = [0,0];
ultimo = u;
while((ultimo~=v)&(ultimo~=0))
   j = 1;
   parar = (0~=0);
   while((~parar)&(Ea(j,1)~=0))
      if((Ea(j,1)==ultimo)&(~enmu(Ea(j,:),landa)))
         parar = (0==0);
      elseif((Ea(j,2)==ultimo)&(~enmu(Ea(j,:),landa)))
         parar = (0==0);
      else
         j = j + 1;
      end
   end
   landa = [Ea(j,:);landa];
   if(Ea(j,1)==ultimo)
      ultimo = Ea(j,2);
   else
      ultimo = Ea(j,1);
   end
end
mu = landa;