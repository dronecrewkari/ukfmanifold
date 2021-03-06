% takes a model(C,G,A) m and a packed group x (matrix NxG) and builds a cell array
% (NxC)
% Emanuele Ruffaldi 2017 @ SSSA
function c = maniunpack(m,x)


assert(isfield(m,'s'),'missing setup, use manisetup(m)');
c = cell(size(x,1),m.count);
s = m.s;

for I=1:length(s)
    for J=1:size(x,1)
        c{J,I} = x(J,s(I).alg(1):s(I).alg(2));
    end
end


