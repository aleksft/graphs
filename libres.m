function v=libres(n,K)
for i=1:n
   u(i,1) = i;
   u(1,2) = 0;
end
j = 1;
while(K(j,1)~=0)
   s = K(j,1);
   u(s,2) = 1;
   r = K(j,2);
   u(r,2) = 1;
   j = j + 1;
end
i = 1;
while((i<n)&(u(i,2)==1))
   i = i+1;
end
if(i<n)
   v(1) = i;
   t = 1;
   for j=i+1:n
      if(u(j,2)==0)
         t = t + 1;
         v(t) = u(j,1);
      end
   end
   t = t + 1;
   v(t) = 0;
elseif((i==n)&(u(i,2)==0))
   v(1) = i;
   v(2) = 0;
else
   v(1) = 0;
   v(2) = 0;
end