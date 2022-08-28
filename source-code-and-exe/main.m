%% aloe.jpg
[im,map,alpha] = imread("HW3_test_image\aloe.jpg","jpg");
R = im(:,:,1);
G = im(:,:,2);
B = im(:,:,3);

% convert to certain color space
[H,S,I] = myrgb2hsi(R,G,B);
[L,a,b] = myrgb2lab(R,G,B);
R2 = double(R)/255;
G2 = double(G)/255;
B2 = double(B)/255;

% image enhance in RGB
[m,n] = size(R2);
for i = 1:m
    for j = 1:n
        R2(i,j) = R2(i,j)*4;
        if R2(i,j) > 1
            R2(i,j) = 1;
        end
        G2(i,j) = G2(i,j)*4;
        if G2(i,j) > 1
            G2(i,j) = 1;
        end
        B2(i,j) = B2(i,j)*4;
        if B2(i,j) > 1
            B2(i,j) = 1;
        end
    end
end

% image enhance in HSI
[m,n] = size(I);
for i = 1:m
    for j = 1:n
        I(i,j) = I(i,j)*4;
        if I(i,j) > 1
            I(i,j) = 1;
        end
    end
end

% image enhance in Lab
[m,n] = size(L);
for i = 1:m
    for j = 1:n
        L(i,j) = L(i,j)*1.7;
        if L(i,j) > 100
            L(i,j) = 100;
        end
    end
end

% convert double RGB back to uint8 RGB
rR = uint8(255*R2);
rG = uint8(255*G2);
rB = uint8(255*B2);
RGBresult = cat(3,rR,rG,rB);

% convert HSI back to uint8 RGB
[rR,rG,rB] = myhsi2rgb(H,S,I);
HSIresult = cat(3,rR,rG,rB);

% convert Lab back to uint8 RGB
[rR,rG,rB] = mylab2rgb(L,a,b);
Labresult = cat(3,rR,rG,rB);

% show result
figure(Name='aloe.jpg');
subplot(2,3,2), imshow(im), title('original');
subplot(2,3,4), imshow(RGBresult), title('RGB');
subplot(2,3,5), imshow(HSIresult), title('HSI');
subplot(2,3,6), imshow(Labresult), title('L*a*b*');

clear;


%% church.jpg
[im,map,alpha] = imread("HW3_test_image\church.jpg","jpg");
R = im(:,:,1);
G = im(:,:,2);
B = im(:,:,3);

% convert to certain color space
[H,S,I] = myrgb2hsi(R,G,B);
[L,a,b] = myrgb2lab(R,G,B);
R2 = double(R)/255;
G2 = double(G)/255;
B2 = double(B)/255;

% image enhance in RGB
[m,n] = size(R2);
for i = 1:m
    for j = 1:n
        R2(i,j) = R2(i,j)*4;
        if R2(i,j) > 1
            R2(i,j) = 1;
        end
        G2(i,j) = G2(i,j)*4;
        if G2(i,j) > 1
            G2(i,j) = 1;
        end
        B2(i,j) = B2(i,j)*4;
        if B2(i,j) > 1
            B2(i,j) = 1;
        end
    end
end

% image enhance in HSI
[m,n] = size(I);
for i = 1:m
    for j = 1:n
        I(i,j) = I(i,j)*4;
        if I(i,j) > 1
            I(i,j) = 1;
        end
    end
end

% image enhance in Lab
[m,n] = size(L);
for i = 1:m
    for j = 1:n
        L(i,j) = L(i,j)*1.7;
        if L(i,j) > 100
            L(i,j) = 100;
        end
    end
end

% convert double RGB back to uint8 RGB
rR = uint8(255*R2);
rG = uint8(255*G2);
rB = uint8(255*B2);
RGBresult = cat(3,rR,rG,rB);

% convert HSI back to uint8 RGB
[rR,rG,rB] = myhsi2rgb(H,S,I);
HSIresult = cat(3,rR,rG,rB);

% convert Lab back to uint8 RGB
[rR,rG,rB] = mylab2rgb(L,a,b);
Labresult = cat(3,rR,rG,rB);

% show result
figure(Name='church.jpg');
subplot(2,3,2), imshow(im), title('original');
subplot(2,3,4), imshow(RGBresult), title('RGB');
subplot(2,3,5), imshow(HSIresult), title('HSI');
subplot(2,3,6), imshow(Labresult), title('L*a*b*');

clear;


%% house.jpg
[im,map,alpha] = imread("HW3_test_image\house.jpg","jpg");
R = im(:,:,1);
G = im(:,:,2);
B = im(:,:,3);

% convert to certain color space
[H,S,I] = myrgb2hsi(R,G,B);
[L,a,b] = myrgb2lab(R,G,B);
R2 = double(R)/255;
G2 = double(G)/255;
B2 = double(B)/255;

% image enhance in RGB
[m,n] = size(R2);
for i = 1:m
    for j = 1:n
        R2(i,j) = R2(i,j)*0.8;
        if R2(i,j) > 1
            R2(i,j) = 1;
        end
        G2(i,j) = G2(i,j)*0.8;
        if G2(i,j) > 1
            G2(i,j) = 1;
        end
        B2(i,j) = B2(i,j)*0.8;
        if B2(i,j) > 1
            B2(i,j) = 1;
        end
    end
end

% image enhance in HSI
[m,n] = size(I);
for i = 1:m
    for j = 1:n
        I(i,j) = I(i,j)*0.8;
        if I(i,j) > 1
            I(i,j) = 1;
        end
    end
end

% image enhance in Lab
[m,n] = size(L);
for i = 1:m
    for j = 1:n
        L(i,j) = L(i,j)*0.9;
        if L(i,j) > 100
            L(i,j) = 100;
        end
    end
end

% convert double RGB back to uint8 RGB
rR = uint8(255*R2);
rG = uint8(255*G2);
rB = uint8(255*B2);
RGBresult = cat(3,rR,rG,rB);

% convert HSI back to uint8 RGB
[rR,rG,rB] = myhsi2rgb(H,S,I);
HSIresult = cat(3,rR,rG,rB);

% convert Lab back to uint8 RGB
[rR,rG,rB] = mylab2rgb(L,a,b);
Labresult = cat(3,rR,rG,rB);

% show result
figure(Name='house.jpg');
subplot(2,3,2), imshow(im), title('original');
subplot(2,3,4), imshow(RGBresult), title('RGB');
subplot(2,3,5), imshow(HSIresult), title('HSI');
subplot(2,3,6), imshow(Labresult), title('L*a*b*');

clear;


%% kitchen.jpg
[im,map,alpha] = imread("HW3_test_image\kitchen.jpg","jpg");
R = im(:,:,1);
G = im(:,:,2);
B = im(:,:,3);

% convert to certain color space
[H,S,I] = myrgb2hsi(R,G,B);
[L,a,b] = myrgb2lab(R,G,B);
R2 = double(R)/255;
G2 = double(G)/255;
B2 = double(B)/255;

% image enhance in RGB
[m,n] = size(R2);
for i = 1:m
    for j = 1:n
        R2(i,j) = R2(i,j)*0.5;
        if R2(i,j) > 1
            R2(i,j) = 1;
        end
        G2(i,j) = G2(i,j)*0.5;
        if G2(i,j) > 1
            G2(i,j) = 1;
        end
        B2(i,j) = B2(i,j)*0.5;
        if B2(i,j) > 1
            B2(i,j) = 1;
        end
    end
end

% image enhance in HSI
[m,n] = size(I);
for i = 1:m
    for j = 1:n
        I(i,j) = I(i,j)*0.5;
        if I(i,j) > 1
            I(i,j) = 1;
        end
    end
end

% image enhance in Lab
[m,n] = size(L);
for i = 1:m
    for j = 1:n
        L(i,j) = L(i,j)*0.7;
        if L(i,j) > 100
            L(i,j) = 100;
        end
    end
end

% convert double RGB back to uint8 RGB
rR = uint8(255*R2);
rG = uint8(255*G2);
rB = uint8(255*B2);
RGBresult = cat(3,rR,rG,rB);

% convert HSI back to uint8 RGB
[rR,rG,rB] = myhsi2rgb(H,S,I);
HSIresult = cat(3,rR,rG,rB);

% convert Lab back to uint8 RGB
[rR,rG,rB] = mylab2rgb(L,a,b);
Labresult = cat(3,rR,rG,rB);

% show result
figure(Name='house.jpg');
subplot(2,3,2), imshow(im), title('original');
subplot(2,3,4), imshow(RGBresult), title('RGB');
subplot(2,3,5), imshow(HSIresult), title('HSI');
subplot(2,3,6), imshow(Labresult), title('L*a*b*');

clear;

