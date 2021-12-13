function SchopenhauerKantentest(Liste)
    global A;
    for i=1:length(Liste)-1
        for j=1:42
            if (Liste(i)==A(j,1)) && (Liste(i+1)==A(j,2))
                A(j,3)=1;
            end
            if (Liste(i)==A(j,2)) && (Liste(i+1)==A(j,1))
                A(j,4)=1;
            end
        end  
    end
end