A=[1 1 1 1 0 0 0 0];
B=[1 1 0 0 1 1 0 0];
C=[1 0 1 0 1 0 1 0];
n=0;
for i1=0:15
    for i2=0:15
        for i3=0:15
           t1=junktor(i1,A,B);
           t2=junktor(i2,B,C);
           t3=junktor(8,t1,t2);
           t4=junktor(i3,A,C);          
           t5=junktor(9,t3,t4);
           if sum(t5)==8
               n=n+1;
               Jlist=[i1 i2 i3]
           end
        end
    end
end