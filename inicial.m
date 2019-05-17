function K=inicial(n,m,E)
for i=1:n
   u(i,1) = i;
   u(i,2) = 0;
end
l = 0;
for j=1:m
   s = E(j,1);
   t = E(j,2);
   if((u(s,2)==0)&(u(t,2)==0))
      l = l + 1;
      K(l,:) = [s,t];
      u(s,2) = 1;
      u(t,2) = 1;
   end
end
l = l + 1;
K(l,:) = [0,0];