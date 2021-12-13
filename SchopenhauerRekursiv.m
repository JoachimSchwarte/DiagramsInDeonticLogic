function SchopenhauerRekursiv(B,Liste)
  global A;
    P=Liste(length(Liste));
    for i=1:36
        if B(P,i)==1
            V=0;
            for j=1:length(Liste)
                if i==Liste(j)
                    V=1;
                end
            end
            if V==0
                Liste(length(Liste)+1)=i;
                if (i==35) || (i==36)
                    Liste
                    SchopenhauerKantentest(Liste);
                else
                    SchopenhauerRekursiv(B,Liste);
                end
                Liste=Liste(1:length(Liste)-1);
            end       
        end
    end
end

