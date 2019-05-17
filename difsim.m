function K0=difsim(K,mu)
stop = (0~=0);
KT = [0,0];
s = 1;
p = 1;
while(K(s,1)~=0)
   if(~enmu(K(s,:),mu))
      KT = [K(s,:);KT];
   end
   s = s + 1;
end
while(mu(p,1)~=0)
   if(~enK(mu(p,:),K))
      KT = [mu(p,:);KT];
   end
   p = p + 1;
end
K0 = KT;