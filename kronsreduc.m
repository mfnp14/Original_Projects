function mat = kronsreduc(M,Zbranch,bus)
% this fuction serves the purpose of obtaining the kron's reduction of a matrix
% after the addition of a branch between any existing bus and the reference
% one.
n = sqrt(numel(M));
Zbus = zeros(n);

for i = 1:n
    for j = 1:n
        Zbus(i,j)= M(i,j) - M(i,bus)*M(bus,j)/(Zbranch+M(bus,bus)); 
    end
end
mat = Zbus;
end
