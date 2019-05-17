function b=entrado(u,K)
p = 1;
esta = (0~=0);
while((K(p,1)~=0)&(~esta))
   if(K(p,1)==u)
      esta = (0==0);
   elseif(K(p,2)==u)
      esta = (0==0);
   else
      p = p + 1;
   end
end
b = esta;