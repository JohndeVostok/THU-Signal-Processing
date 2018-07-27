img = imread('origin.bmp');
img = rgb2gray(img);
[c, s] = wavedec2(img, 3, 'haar');
[H1,V1,D1] = detcoef2('all', c, s, 1);
A1 = appcoef2(c, s, 'haar', 1);
V1img = wcodemat(V1, 255, 'mat', 1);
H1img = wcodemat(H1, 255, 'mat', 1);
D1img = wcodemat(D1, 255, 'mat', 1);
A1img = wcodemat(A1, 255, 'mat', 1);

[H2,V2,D2] = detcoef2('all', c, s, 2);
A2 = appcoef2(c,s,'haar',2); 
V2img = wcodemat(V2, 255, 'mat', 1);
H2img = wcodemat(H2, 255, 'mat', 1);
D2img = wcodemat(D2, 255, 'mat', 1);
A2img = wcodemat(A2, 255, 'mat', 1);

[H3,V3,D3] = detcoef2('all', c, s, 3);
A3 = appcoef2(c, s, 'haar', 3);
V3img = wcodemat(V3, 255, 'mat', 1);
H3img = wcodemat(H3, 255, 'mat', 1);
D3img = wcodemat(D3, 255, 'mat', 1);
A3img = wcodemat(A3, 255, 'mat', 1);

res = [A3img V3img; H3img D3img];
res = [res V2img; H2img D2img];
res = [res V1img; H1img D1img];
imwrite(uint8(res), 'res.bmp', 'bmp');