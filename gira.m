function c=gira(mu)
p = 1;
while(mu(p,1)~=0)
   p = p + 1;
end
p = p - 1;
for i=p:-1:1
   c(p-i+1,:) = mu(p,:);
end
c(p+1,:) = [0,0];