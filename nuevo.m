function K=nuevo(vb,v)
t = 1;
while(vb(t,1)~=0)
   t = t + 1;
end
t = t - 1;
r = (t-1)/2;
if(v~=0)
   m = 1;
   while((vb(m,1)~=v)|(vb(m,2)~=v))
      m = m + 1;
   end
   if(m~=1)
      a(:) = vb(m,:);
      for i=1:m-1
         E(i,:) = vb(i,:);
      end
      for i=m+1:t
         E(i-1,:) = vb(i,:);
      end
   else
      a(:) = vb(1,:);
      for i=2:t
         E(i-1,:) = vb(i,:);
      end
   end
else
   a(:) = vb(t,:);
   for i=1:t-1
      E(i,:) = vb(i,:);
   end
end
mu = cadena(a(1),a(2),E);
q = 1;
if(a(1)==v)
   mu = gira(mu);
end
entra = (0==0);
s = 0;
while(mu(q,1)~=0)
   if(entra)
      s = s + 1;
      K(s,:) = mu(q,:);
      entra = (0~=0);
      q = q + 1;
   else
      entra = (0==0);
      q = q + 1;
   end
end
K = [K;0 0];