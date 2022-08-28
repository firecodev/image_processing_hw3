function [H,S,I] = myrgb2hsi(RUint,GUint,BUint)

% convert to 0~1 double type value
R = double(RUint)/255;
G = double(GUint)/255;
B = double(BUint)/255;

% m x n: the size of the image
[m,n] = size(R);

% preparing result arrays
H = zeros(m,n,"double");
S = zeros(m,n,"double");
I = zeros(m,n,"double");

% transform
for i = 1:m
    for j = 1:n
        % avoid div by 0
        if R(i,j) == G(i,j) && G(i,j) == B(i,j)
            theta = 0;
        else
            theta = acosd(((0.5)*((R(i,j)-G(i,j))+(R(i,j)-B(i,j))))/sqrt((R(i,j)-G(i,j))^2+(R(i,j)-B(i,j))*(G(i,j)-B(i,j))));
        end
        % calculate H
        if B(i,j) <= G(i,j)
            H(i,j) = theta;
        else
            H(i,j) = 360 - theta;
        end
        % calculate S
        S(i,j) = 1 - ((3/(R(i,j)+G(i,j)+B(i,j)))*min([R(i,j),G(i,j),B(i,j)]));
        % calculate I
        I(i,j) = (1/3)*(R(i,j)+G(i,j)+B(i,j));
    end
end

end

