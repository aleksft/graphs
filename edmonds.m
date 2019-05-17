function K=edmonds(E)
NE = [E;0 0];
m = 1;
while(NE(m,1)~=0)
   m = m + 1;
end
m = m - 1;
n = NE(1,1);
for i=1:m+1
   if(NE(i,1)>n)
      n = NE(i,1);
   end
   if(NE(i,2)>n)
      n = NE(i,2);
   end
end
K0 = inicial(n,m,E);
vl = libres(n,K0);
KM=emparej(n,m,vl,K0,E);
p = 1;
while(KM(p,1)~=0)
   K(p,:) = KM(p,:);
   p = p + 1;
end