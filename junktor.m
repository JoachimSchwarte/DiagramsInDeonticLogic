function [C] = junktor(J,A,B)
% J ist eine ganze Zahl im Bereich 0 bis 15
% und bezeichnet einen der 16 möglichen aussagenlogischen
% Junktoren.
% A und B sind Vektoren, die gleiche Länge haben und
% Wahrheitswerte beinhalten.
% C ist ein Wahrheitswertvektor, der die gleiche Länge hat
% wie die Vektoren A und B. Die Wahrheitswertverteilung in 
% C ergibt sich durch die Anwendung des Junktor J auf die
% Vektoren A und B.
    J1 = floor(J/8);
    J=J-J1*8;
    J2 = floor(J/4);
    J=J-J2*4;
    J3 = floor(J/2);
    J4=J-J3*2;
    JV=[J1 J2 J3 J4];
    for i=1:length(A)
        C(i)=JV(4-2*A(i)-B(i));
    end
end

