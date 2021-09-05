function A = CheckAndTurn(A)
% CheckAndTurn  - if A is row, it'll be turned to column
if isrow(A)
    A = permute(A, [2,1]);
end
end