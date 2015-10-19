
library(blockmatrix)
library(coloring)
library(jpeg)


file <- '/home/ecor/Dropbox/R-packages/blockmatrix/inst/doc/examples/logos/cimatosa.jpg' 


file_new <- '/home/ecor/Dropbox/R-packages/blockmatrix/inst/doc/examples/logos/cimatosa_2.jpg' 

img <- readJPEG(system.file("img","Rlogo.jpg",package="jpeg"))
img <- readJPEG(file)
imgbackup <- img

dims <- dim(img) 


mins <- 120 ##min(dims[1:2])
nrowe=30
ncole=30

img <- img[1:mins,1:mins,1:3]

dims <- dim(img)

for (i in 1:dims[3]) {
	
	
	bimg <- as.blockmatrix(img[,,i],nrowe=nrowe,ncole=ncole)
	lcol=1
	for (r in 1:nrow(bimg)) {
		for (c in 1:ncol(bimg)) {
		
			
			temp <- bimg[r,c]
			temp[,1] <- lcol
			temp[1,] <- lcol
			temp[,ncol(temp)] <- lcol
			temp[nrow(temp),] <- lcol
			bimg[r,c] <- temp ###as.blockmatrix(temp,nrow=1,ncol=1)
	
		}			
	}
	### blank spaces!!!
	bimg[4,4] <- lcol
	bimg[3,3] <- lcol
	bimg[2,2] <- lcol
##	bimg[1,4] <- lcol
	bimg[1,3] <- lcol
	bimg[2,1] <- lcol
	
	## replecaments
	temp <- bimg[1,4]
	bimg[1,4] <- bimg[4,1]
	bimg[4,1] <- temp
	
	temp <- bimg[2,1]
	bimg[2,1] <- bimg[2,4]
	bimg[2,4] <- temp
	
	
	img[,,i] <- as.matrix(bimg)

	
}
# write the image into a raw vector - using a low quality
#r <- writeJPEG(img, raw(), quality=0.3)
# read it back again
writeJPEG(img,target=file_new)












