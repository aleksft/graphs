function b=eslibre(v,vl)
i = 1;
while((vl(i)~=0)&(vl(i)~=v))
   i = i + 1;
end
if(vl(i)==v)
   b = (0==0);
else
   b = (0~=0);
end