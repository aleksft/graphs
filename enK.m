function b=enK(a,K)
fin = (0~=0);
p = 1;
a1 = a(1);
a2 = a(2);
while((K(p,1)~=0)&(~fin))
   if((K(p,1)==a1)&(K(p,2)==a2))
      fin = (0==0);   
   elseif((K(p,1)==a2)&(K(p,2)==a1))
      fin = (0==0);
   else
      p = p + 1;
   end
end
b = fin;