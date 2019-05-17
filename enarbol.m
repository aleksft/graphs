function b=enarbol(v,Va)
i = 1;
while((Va(i)~=0)&(Va(i)~=v))
   i = i + 1;
end
if(Va(i)==v)
   b = (0==0);
else
   b = (0~=0);
end