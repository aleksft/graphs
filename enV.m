function b=enV(u,V)
p = 1;
while((V(p)~=0)&(V(p)~=u))
   p = p + 1;
end
if(V(p)==u)
   b = (0==0);
else
   b = (0~=0);
end