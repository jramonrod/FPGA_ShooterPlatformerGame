/*  GIMP header image file format (INDEXED): C:\Users\Shammy\Documents\ShooterVerilogGame-master\Stage2.h  */

static unsigned int width = 75;
static unsigned int height = 50;

/*  Call this macro repeatedly.  After each use, the pixel data can be extracted  */

#define HEADER_PIXEL(data,pixel) {\
pixel[0] = header_data_cmap[(unsigned char)data[0]][0]; \
pixel[1] = header_data_cmap[(unsigned char)data[0]][1]; \
pixel[2] = header_data_cmap[(unsigned char)data[0]][2]; \
data ++; }

static char header_data_cmap[256][3] = {
	{  0,  1,  0},
	{ 32, 66,167},
	{255,  3,233},
	{ 43, 77,163},
	{  0,108, 17},
	{ 57, 81,160},
	{217, 28,253},
	{ 78, 95,154},
	{171, 65,255},
	{ 57,103,253},
	{102,103,147},
	{ 85,110,154},
	{ 39,118,244},
	{ 71,132, 44},
	{255, 63,190},
	{150, 89,251},
	{ 28,128,233},
	{174, 89,248},
	{ 98,123,151},
	{ 38,135,225},
	{137,120,140},
	{ 44,142,218},
	{ 27,151,213},
	{127,128,219},
	{116,139,145},
	{ 29,161,202},
	{255,101,150},
	{157,132,135},
	{139,150, 66},
	{128,147,144},
	{255,112,137},
	{ 52,167,196},
	{ 31,179,187},
	{134,155,141},
	{139,157,138},
	{170,159, 78},
	{147,163,138},
	{199,153,123},
	{ 20,202,178},
	{  0,212,159},
	{190,166, 87},
	{157,175,138},
	{164,179,133},
	{206,171, 89},
	{255,158, 92},
	{219,167,119},
	{227,176, 99},
	{ 24,234,132},
	{178,191,131},
	{ 12,255,  0},
	{ 41,239, 94},
	{241,181,106},
	{245,180,111},
	{244,182,101},
	{ 88,218,242},
	{191,203,126},
	{255,212, 37},
	{151,234,195},
	{216,223,122},
	{186,241,167},
	{231,239,119},
	{222,248,139},
	{255,255,  1},
	{250,253,113},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255},
	{255,255,255}
	};
static char header_data[] = {
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,0,
	0,0,0,4,4,4,4,4,4,4,4,4,4,4,0,0,
	4,4,4,4,4,4,4,4,4,4,4,4,4,0,0,4,
	4,4,4,4,4,4,13,28,28,0,0,35,40,40,43,43,
	46,46,52,53,37,20,10,5,1,0,0,
	0,4,0,0,0,0,0,0,0,0,0,0,0,0,4,0,
	0,0,0,4,0,0,0,0,0,0,0,0,0,4,0,0,
	4,0,0,0,0,0,0,0,0,0,0,0,4,0,0,4,
	0,0,0,0,0,0,0,0,40,0,0,46,0,0,0,0,
	0,0,0,0,0,0,0,0,24,0,0,
	0,4,0,4,4,4,4,4,4,4,4,4,4,4,4,0,
	0,0,0,4,4,4,4,4,0,4,4,4,4,4,0,0,
	4,0,4,4,4,4,4,4,4,4,4,0,4,0,0,28,
	0,35,35,40,43,43,46,46,51,0,0,27,0,7,3,3,
	7,11,18,24,29,34,41,48,55,0,0,
	0,4,0,4,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,4,0,4,0,0,0,0,0,0,
	4,0,4,0,0,0,0,0,0,0,28,0,35,0,0,40,
	0,46,0,0,0,0,0,0,0,0,0,5,0,18,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,4,0,4,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,4,0,4,0,0,0,0,0,0,
	4,0,4,0,0,0,0,0,0,0,40,0,43,0,0,53,
	0,37,0,0,0,0,0,0,0,0,0,29,0,42,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,4,0,4,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,4,0,4,0,0,0,0,0,0,
	28,0,35,0,0,0,0,0,0,0,51,0,45,0,0,7,
	0,3,0,0,0,0,0,0,0,0,0,60,0,38,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,4,0,4,4,4,4,4,4,4,4,4,4,4,4,0,
	0,0,0,0,0,0,0,4,0,4,0,0,0,0,0,0,
	40,0,43,0,0,0,0,0,0,0,7,0,3,0,0,18,
	0,29,0,0,0,0,0,0,0,0,0,49,0,49,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,4,0,0,0,0,0,0,0,0,0,0,0,0,4,0,
	0,0,0,0,0,0,0,28,0,35,0,0,0,0,0,0,
	46,0,52,0,0,0,0,0,0,0,18,0,24,0,0,42,
	0,58,0,0,0,0,0,0,0,0,0,49,0,49,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,4,4,4,4,4,4,4,4,4,4,4,4,0,4,0,
	0,0,0,0,0,0,0,40,0,43,0,0,0,0,0,0,
	10,0,1,0,0,0,0,0,0,0,42,0,58,0,0,47,
	0,49,0,0,0,0,0,0,0,0,0,49,0,49,49,49,
	49,49,49,49,49,49,49,49,49,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,28,0,28,0,
	0,0,0,0,0,0,0,53,0,45,0,0,0,0,0,0,
	11,0,24,29,34,41,48,55,60,61,54,0,49,0,0,49,
	0,49,49,49,49,49,49,49,49,0,0,49,0,0,0,0,
	0,0,0,0,0,0,0,0,49,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,35,0,43,0,
	0,0,0,0,0,0,0,7,0,1,0,0,0,0,0,0,
	41,0,0,0,0,0,0,0,0,0,0,0,49,0,0,49,
	0,0,0,0,0,0,0,0,49,0,0,49,0,49,49,49,
	49,49,49,49,49,49,49,49,49,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,46,0,53,0,
	0,0,0,0,0,0,0,18,0,24,0,0,0,0,0,0,
	57,0,49,49,49,49,49,49,49,49,49,0,49,0,0,49,
	0,49,49,49,49,49,49,0,49,0,0,49,0,49,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,27,0,7,0,
	0,0,0,0,0,0,0,42,0,58,0,0,0,0,0,0,
	49,0,49,0,0,0,0,0,0,0,49,0,49,0,0,49,
	0,49,0,0,0,0,49,0,49,0,0,49,0,49,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,7,0,18,0,
	0,0,0,0,0,0,0,54,0,49,0,0,0,0,0,0,
	49,0,49,0,0,0,0,0,0,0,49,0,49,0,0,49,
	0,49,0,0,0,0,49,0,49,0,0,49,0,49,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,33,0,48,0,
	0,0,0,0,0,0,0,49,0,49,0,0,0,0,0,0,
	49,0,49,0,0,0,0,0,0,0,49,0,49,0,0,49,
	0,49,0,0,0,0,49,0,49,0,0,49,0,49,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,1,5,11,18,18,24,33,36,42,55,58,60,0,50,0,
	0,0,0,0,0,0,0,49,0,49,0,0,0,0,0,0,
	49,0,49,0,0,0,0,0,0,0,49,0,49,0,0,49,
	0,49,49,49,49,49,49,0,49,0,0,49,0,49,49,49,
	49,49,49,49,49,49,49,49,49,0,0,
	0,24,0,0,0,0,0,0,0,0,0,0,0,0,49,0,
	0,0,0,0,0,0,0,49,0,49,0,0,0,0,0,0,
	49,0,49,0,0,0,0,0,0,0,49,0,49,0,0,49,
	0,0,0,0,0,0,0,0,49,0,0,49,0,0,0,0,
	0,0,0,0,0,0,0,0,49,0,0,
	0,55,60,63,54,49,49,49,49,49,49,49,49,49,49,0,
	0,0,0,0,0,0,0,49,49,49,0,0,0,0,0,0,
	49,49,49,0,0,0,0,0,0,0,49,49,49,0,0,49,
	49,49,49,49,49,49,49,49,49,0,0,49,49,49,49,49,
	49,49,49,49,49,49,49,49,49,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,9,9,9,9,9,
	9,9,9,9,9,9,9,9,9,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,
	0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,19,19,19,19,19,
	19,19,19,19,19,19,19,0,19,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,22,0,22,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,31,0,31,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,38,0,38,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,39,0,39,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,23,0,23,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,17,0,17,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,17,0,17,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,15,15,15,15,15,
	15,15,15,15,15,15,15,0,15,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,
	0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,6,0,6,6,6,
	6,6,6,6,6,6,6,6,6,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,2,0,2,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,14,0,14,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,26,0,26,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,44,0,44,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,56,0,56,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,62,0,62,62,62,
	62,62,62,62,62,62,62,62,62,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,62,0,0,0,0,
	0,0,0,0,0,0,0,0,62,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,62,62,62,62,62,
	62,62,62,62,62,62,62,62,62,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
	0,0,0,0,0,0,0,0,0,0,0
	};
