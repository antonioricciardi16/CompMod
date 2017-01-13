load('data');
dwis=double(dwis);
dwis=permute(dwis,[4,1,2,3]);

% Middle slice of the first image volume, which has b=0
imshow(flipud(squeeze(dwis(1,:,:,72))'), []);
% Middle slice of the second image volume with b=1000
imshow(flipud(squeeze(dwis(2,:,:,72))'), []);

% new comment

qhat = load( 'bvecs' );
and the b-value array, which we can construct like this:
bvals = 1000*sum(qhat.*qhat);
