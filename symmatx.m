function mat = symmatx(M)
% the purpose of this function is to obtain a symmetrical
% matrix from the original's upper-triangle.
n= sqrt(numel(M));
    for i=1:n
        for j= 1:n
            if i>j
                M(i,j)=M(j,i);
            end
        end
    end
    mat = M;
end