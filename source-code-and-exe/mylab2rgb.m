function [R,G,B] = mylab2rgb(L,a,b)

% XYZ to RGB matrix (sRGB working space)
converMatrix = [3.2404542, -1.5371385, -0.4985314; -0.9692660, 1.8760108, 0.0415560; 0.0556434, -0.2040259, 1.0572252];

% Reference white (D65)
Xn = 0.9504;
Yn = 1.0000;
Zn = 1.0888;

% m x n: the size of the image
[m,n] = size(L);

% preparing result arrays
R = zeros(m,n,"double");
G = zeros(m,n,"double");
B = zeros(m,n,"double");

% transform
for i = 1:m
    for j = 1:n
        % calculate X,Y,Z
        fy = (L(i,j)+16)/116;
        fx = fy + a(i,j)/500;
        fz = fy - b(i,j)/200;

        if fy^3 > 0.008856
            Y = Yn*(fy^3);
        else
            Y = (fy-(16/116))*3*0.128419*Yn;
        end

        if fx^3 > 0.008856
            X = Xn*(fx^3);
        else
            X = (fx-(16/116))*3*0.128419*Xn;
        end

        if fz^3 > 0.008856
            Z = Zn*(fz^3);
        else
            Z = (fz-(16/116))*3*0.128419*Zn;
        end

        % calculate R,G,B
        tmp = num2cell(converMatrix*[X; Y; Z]);
        [R(i,j),G(i,j),B(i,j)] = deal(tmp{:});
    end
end

% convert to 0~255 uint8 type value
R = uint8(255*R);
G = uint8(255*G);
B = uint8(255*B);

end

