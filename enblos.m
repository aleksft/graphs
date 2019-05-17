function b=enblos(v,vb)
i = 1;
while((vb(i,1)~=0)&(vb(i,1)~=v)&(vb(i,2)~=v))
   i = i + 1;
end
if(vb(i,1)==0)
   b = (0~=0);
else
   b = (0==0);
end