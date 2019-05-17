function b=espar(v,Vp)
i = 1;
while((Vp(i)~=0)&(Vp(i)~=v))
   i = i + 1;
end
if(Vp(i)==v)
   b = (0==0);
else
   b = (0~=0);
end