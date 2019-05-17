function u=pareja(v,K)
i = 1;
while((K(i,1)~=0)&(K(i,1)~=v)&(K(i,2)~=v))
   i = i + 1;
end
if(K(i,1)==v)
   u = K(i,2);
elseif(K(i,2)==v)
   u = K(i,1);
else
   u = 0;
end