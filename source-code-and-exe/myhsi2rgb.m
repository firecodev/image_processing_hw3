function [R,G,B] = myhsi2rgb(H,S,I)

% m x n: the size of the image
[m,n] = size(H);

% preparing result arrays
R = zeros(m,n,"double");
G = zeros(m,n,"double");
B = zeros(m,n,"double");

% transform
for i = 1:m
    for j = 1:n
        if H(i,j) < 120
            tempH = H(i,j);
            B(i,j) = I(i,j)*(1-S(i,j));
            R(i,j) = I(i,j)*(1+(S(i,j)*cosd(tempH))/(cosd(60-tempH)));
            G(i,j) = 3*I(i,j)-(R(i,j)+B(i,j));
        elseif H(i,j) < 240
            tempH = H(i,j) - 120;
            R(i,j) = I(i,j)*(1-S(i,j));
            G(i,j) = I(i,j)*(1+(S(i,j)*cosd(tempH))/(cosd(60-tempH)));
            B(i,j) = 3*I(i,j)-(R(i,j)+G(i,j));
        else
            tempH = H(i,j) - 240;
            G(i,j) = I(i,j)*(1-S(i,j));
            B(i,j) = I(i,j)*(1+(S(i,j)*cosd(tempH))/(cosd(60-tempH)));
            R(i,j) = 3*I(i,j)-(G(i,j)+B(i,j));
        end
    end
end

% convert to 0~255 uint8 type value
R = uint8(255*R);
G = uint8(255*G);
B = uint8(255*B);

end

