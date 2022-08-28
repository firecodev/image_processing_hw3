function [L,a,b] = myrgb2lab(RUint,GUint,BUint)

% RGB to XYZ matrix (sRGB working space)
converMatrix = [0.4124564, 0.3575761, 0.1804375; 0.2126729, 0.7151522, 0.0721750; 0.0193339, 0.1191920, 0.9503041];

% Reference white (D65)
Xn = 0.9504;
Yn = 1.0000;
Zn = 1.0888;

% convert to 0~1 double type value
R = double(RUint)/255;
G = double(GUint)/255;
B = double(BUint)/255;

% m x n: the size of the image
[m,n] = size(R);

% preparing result arrays
L = zeros(m,n,"double");
a = zeros(m,n,"double");
b = zeros(m,n,"double");

% transform
for i = 1:m
    for j = 1:n
        % calculate X,Y,Z
        tmp = num2cell(converMatrix*[R(i,j); G(i,j); B(i,j)]);
        [X,Y,Z] = deal(tmp{:});
        % calculate L,a,b
        L(i,j) = 116*h(Y/Yn)-16;
        a(i,j) = 500*(h(X/Xn)-h(Y/Yn));
        b(i,j) = 200*(h(Y/Yn)-h(Z/Zn));
    end
end

end

function r = h(q)
    if q > 0.008856
        r = q.^(1/3);
    else
        r = (7.787).*q + (16/116);
    end
end

