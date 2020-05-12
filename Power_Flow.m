%Power flow/ Load flow solution by the gauss seidel method
clear all;
clc;
      %Formation of Admittance matrix
          %line data matrix formation
%Line data |From bus| To Bus |Transfer admittance|Charging Admittance(b/2)|
 Ldata =  [    1        2           -40.0i            0.00i           
               1        3           -20.0i            0.00i 
               2        3           -40.0i            0.00i];
   Lo=Ldata(:,1);
   Lt=Ldata(:,2);
   yL=Ldata(:,3);
   bL=Ldata(:,4);
   bus_no=max(max(Lo),max(Lt));
   branch_no=length(Lo);
   %Zero matrix formation(it's easy to make Y bus)
   YB=zeros(bus_no,bus_no);
   %For off diagonal elements
   for k=1:branch_no
       YB(Lo(k),Lt(k))=-yL(k);
       YB(Lt(k),Lo(k))=YB(Lo(k),Lt(k));
   end
   %For diagonal elements
   for m=1:bus_no;
       for n=1:branch_no
           if Lo(n)==m
               YB(m,m)=YB(m,m)+yL(n)+bL(n);
           else
               if Lt(n)==m
               YB(m,m)=YB(m,m)+yL(n)+bL(n);
               end
           end
       end
   end
       % Bus type and bus data matrix formation
%---------------------------------------%
       %| bus |  Pgi |  Qgi | Pli |  Qli |  ViR+ViI*j|
       %| no  |      |      |     |      |           | 
Busdata=[ 1     0.00   0.00  0.00   0.00   1.025+0.00i;
          2     0.00   0.00  4.00   2.00   1.00+0.00i;                      
          3     2.05   0.905  0.00   0.00   1.03+0.00i;];
GenMw=Busdata(:,2);
GenMvar=Busdata(:,3);
LoadMw=Busdata(:,4);
LoadMvar=Busdata(:,5);
V=Busdata(:,6);
Pb=GenMw-LoadMw;
Qb=GenMvar-LoadMvar;
itmax=100;
%Formation of gauss seidal method
for it=1:itmax
    for i=2:bus_no
         SigVY=0;
      for j=1:bus_no
             if j~=i
             SigVY=SigVY+YB(i,j)*V(j);  
             end
        end
           V(i)=(1/YB(i,i))*((Pb(i)-Qb(i))/((conj(V(i))))-SigVY)
      end
  end

V


