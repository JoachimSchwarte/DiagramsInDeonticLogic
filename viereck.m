A=[1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0];
B=[1 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0];
C=[1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0];
D=[1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0];
n=0;
for i1=1:14
    for i2=1:14
        for i3=1:14
            for i4=1:14
                for i5=1:14
                    m=0;
                    for i6=1:14
                        t01=junktor(i1,A,B);
                        t02=junktor(i2,A,C);
                        t03=junktor(i3,B,D);
                        t04=junktor(i4,A,D);
                        t05=junktor(i5,B,C);
                        t06=junktor(8,t01,t02);
                        t07=junktor(8,t06,t03);
                        t08=junktor(8,t07,t04);
                        t09=junktor(8,t08,t05);
                        t10=junktor(i6,C,D);
                        t11=junktor(11,t09,t10);
                        if sum(t11)==16
                            m=m+1;
                            Jlist=[i1 i2 i3 i4 i5 i6];
                        end
                        if m==1
                            n=n+1
                            Jlist
                        end
                    end
                end
            end
        end
    end
end
        