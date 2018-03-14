#include <stdio.h>
#include <string.h>
#include <float.h>
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"
#define NANOSVG_IMPLEMENTATION
#include "nanosvg.h"
#define NANOSVGRAST_IMPLEMENTATION
#include "nanosvgrast.h"
#include <boost/filesystem.hpp>
#include <iostream>
using namespace boost::filesystem;
using namespace std;
int main(int argc, char** argv)
{
    //current_path("/home/rmqlife/hello");
    //cout << current_path() << endl;

	NSVGimage *image = NULL;
	NSVGrasterizer *rast = NULL;
	unsigned char* img = NULL;
	int w, h;
    string filename(argv[1]);
	cout << "filename: "<< filename << endl;
	 
	image = nsvgParseFromFile(filename.c_str(), "px", 96.0f);
	if (image == NULL) {
		printf("Could not open SVG image.\n");
		nsvgDeleteRasterizer(rast);
        nsvgDelete(image);  
        return 1;
	}
	w = (int)image->width;
	h = (int)image->height;

	rast = nsvgCreateRasterizer();
	if (rast == NULL) {
		printf("Could not init rasterizer.\n");
		nsvgDeleteRasterizer(rast);
        nsvgDelete(image);
		return 1;
	}

    img = (unsigned char*)malloc(w*h*4);
	if (img == NULL) {
		printf("Could not alloc image buffer.\n");
		nsvgDeleteRasterizer(rast);
        nsvgDelete(image);  
		return 1;
	}

	printf("rasterizing image %d x %d\n", w, h);
	nsvgRasterize(rast, image, 0,0,1, img, w, h, w*4);

    string output_filename = filename.substr(0,filename.length()-4) + ".png"; 
    //filename[filename.length - 4]; //+".png"
	cout << "Writing " << output_filename << endl;
 	stbi_write_png(output_filename.c_str(), w, h, 4, img, w*4);

	return 0;
}
