function [C] = junktor(J,A,B)
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

