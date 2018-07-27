img = imread('origin.bmp');
img = rgb2gray(img);

A = [1 -1; -1 1];
A1 = conv2(img, A);
Aimg = wcodemat(A1, 255, 'mat', 1);
imwrite(uint8(Aimg), 'harrA.bmp', 'bmp');

B = [-1 -1 1 1; -1 -1 1 1; 1 1 -1 -1; 1 1 -1 -1];
B1 = conv2(img, B);
B2 = B1(1:2:end, 1:2:end);
Bimg = wcodemat(B2, 255, 'mat', 1);
imwrite(uint8(Bimg), 'harrB.bmp', 'bmp');

C = [1 1 1 1 -1 -1 -1 -1; 1 1 1 1 -1 -1 -1 -1; 1 1 1 1 -1 -1 -1 -1; 1 1 1 1 -1 -1 -1 -1; -1 -1 -1 -1 1 1 1 1; -1 -1 -1 -1 1 1 1 1;-1 -1 -1 -1 1 1 1 1; -1 -1 -1 -1 1 1 1 1];
C1 = conv2(img, C);
C2 = C1(1:4:end, 1:4:end);
Cimg = wcodemat(C2, 255, 'mat', 1);
imwrite(uint8(Cimg), 'harrC.bmp', 'bmp');

D = [1 1 -1 -1; 1 1 -1 -1; 1 1 -1 -1; 1 1 -1 -1; ];
D1 = conv2(img, D);
D2 = D1(1:2:end, 1:2:end);
Dimg = wcodemat(D2, 255, 'mat', 1);
imwrite(uint8(Dimg), 'harrD.bmp', 'bmp');

E = [1 1 1 1; 1 1 1 1; -1 -1 -1 -1; -1 -1 -1 -1];
E1 = conv2(img, E);
E2 = E1(1:2:end, 1:2:end);
Eimg = wcodemat(E2, 255, 'mat', 1);
imwrite(uint8(Eimg), 'harrE.bmp', 'bmp');

F = [1 1 1 1 -1 -1 -1 -1; 1 1 1 1 -1 -1 -1 -1; 1 1 -1 -1 1 1 -1 -1; 1 1 -1 -1 1 1 -1 -1; -1 -1 1 1 -1 -1 1 1; -1 -1 1 1 -1 -1 1 1; -1 -1 -1 -1 1 1 1 1; -1 -1 -1 -1 1 1 1 1];
F1 = conv2(img, F);
F2 = F1(1:4:end, 1:4:end);
Fimg = wcodemat(F2, 255, 'mat', 1);
imwrite(uint8(Fimg), 'harrF.bmp', 'bmp');

