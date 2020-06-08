function mat= branchaddition(M,Zbranch,bus1)
% this function serves the purpose of modifying the impedance
% matrix of a system when a new bus is added.
% Note that buses must be input according to the
% ascending order of their numbers.
% Here, the variable 'bus1' represents the existing bus.
% Consequently, 'bus2' is the input related to the new bus.
if M==0
    M=Zbranch;
else
    if bus1==0 % this conditional statement checks whether the
        % existing bus is the reference one.
        M(end+1,end+1)= Zbranch;
    else % If that is not the case, it writes a new column by
        % copying the items in an existing one down to the very last one.
        M(1,end+1)= M(1,bus1);
        for i = 2:sqrt(numel(M))
            M(i,end)= M(i,bus1);
        end
        M(end+1,end)= M(bus1,bus1)+Zbranch; % this command will add the
        % new main diagonal element, making the matrix square again.
        M = symmatx(M); % Finally, the recently added column is copied to
        % the last line.
    end
end
 mat = M;
end