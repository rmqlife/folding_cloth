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
int main()
{
    current_path("/home/rmqlife/hello");
    //cout << current_path() << endl;

	NSVGimage *image = NULL;
	NSVGrasterizer *rast = NULL;
	unsigned char* img = NULL;
	int w, h;
    const char* filename = "tshirt.svg";

	printf("parsing %s\n", filename);
	image = nsvgParseFromFile(filename, "px", 96.0f);
	if (image == NULL) {
		printf("Could not open SVG image.\n");
		goto error;
	}
	w = (int)image->width;
	h = (int)image->height;

	rast = nsvgCreateRasterizer();
	if (rast == NULL) {
		printf("Could not init rasterizer.\n");
		goto error;
	}

    img = (unsigned char*)malloc(w*h*4);
	if (img == NULL) {
		printf("Could not alloc image buffer.\n");
		goto error;
	}

	printf("rasterizing image %d x %d\n", w, h);
	nsvgRasterize(rast, image, 0,0,1, img, w, h, w*4);

	printf("writing svg.png\n");
 	stbi_write_png("svg.png", w, h, 4, img, w*4);

error:
	nsvgDeleteRasterizer(rast);
	nsvgDelete(image);

	return 0;
}
