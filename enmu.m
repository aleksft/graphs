function b=enmu(a,mu)
fin = (0~=0);
p = 1;
a1 = a(1);
a2 = a(2);
while((mu(p,1)~=0)&(~fin))
   if((mu(p,1)==a1)&(mu(p,2)==a2))
      fin = (0==0);   
   elseif((mu(p,1)==a2)&(mu(p,2)==a1))
      fin = (0==0);
   else
      p = p + 1;
   end
end
b = fin;