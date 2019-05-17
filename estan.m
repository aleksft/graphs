function u=estan(vl,V)
p = 1;
u = [0];
while(V(p)~=0)
   esta = (0~=0);
   j = 1;
   while((vl(j)~=0)&(~esta))
      if(vl(j)==V(p))
         esta = (0==0);
         u = [V(p),u];
      else
         j = j + 1;
      end
   end
   p = p + 1;
end
