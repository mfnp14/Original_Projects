function mat = kronsreduct(M,Zbranch,bus1,bus2)
% this fuction serves the purpose of obtaining the kron's reduction of a matrix
% after the addition of a branch between any two existing buses.
n = sqrt(numel(M));
Zbus = zeros(n);

for i = 1:n
    for j = 1:n
        Zbus(i,j)= M(i,j) - (M(i,bus1)-M(i,bus2))*(M(bus1,j)-M(bus2,j))/(Zbranch+M(bus1,bus1)+M(bus2,bus2)-2*M(bus1,bus2)); 
    end
end
mat = Zbus;
end