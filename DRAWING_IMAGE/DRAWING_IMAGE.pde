//Global Variables
int appWidth, appHeight;
Boolean widthLarger=false, heightLarger=false;
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
float imageWidthRatio=0.0, imageHeightRatio=0.0;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
float topHalfX, topHalfY, topHalfWidth, topHalfHeight;
float bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight;
PImage pic;
//
void setup() 
{
  size(1200, 675); //Landscape
  //Copy Display Orientation
  appWidth = width;
  appHeight = height;
  //
  int picWidth = 1200;
  int picHeight = 675;
  //
  float smallerDimension, largerDimension;
  //Image Orientation: Landscape, Portrait, Square
  if ( picWidth >= picHeight ) { //True if Landscape or Square
    largerDimension = picWidth;
    smallerDimension = picHeight;
    widthLarger = true;
  } else { //False if Portrait
    largerDimension = picHeight;
    smallerDimension = picWidth;
    heightLarger = true;
  }
  //
  //Teaching example, width is known to be larger
  float imageWidthRatio=0.0, imageHeightRatio=0.0;
  //Better Image Stretch Algorithm, smaller image to larger CANVAS
  if ( appWidth >= picWidth ) {
    picWidthAdjusted = appWidth;
    //
    if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
    //
    if ( appHeight >= picHeight ) {
      if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
      picHeightAdjusted = picWidthAdjusted * imageHeightRatio;
      if (appHeight < picHeightAdjusted ) {
        println("STOP: image is too big for CANVAS");
        exit(); //stops any further use of APP
        //Remember: goal is 1:1 aspect ratio
      }
    } else {
    }
    //Verifying Variable Values after algoroithm
    println("App Width:", appWidth, " and App Height:", appHeight);
    println("Larger Image dimension is:", largerDimension);
    println("Image dimensions are:", picWidth, picHeight);
    println("Adjusted Image dimesnions are (stretch is goal):", picWidthAdjusted, picHeightAdjusted);
    //Image smaller than CANVAS needs separate algorithm
    //Population
    pic = loadImage("../IMAGES USED/SHNEED.jpg");
    imageBackgroundX = appWidth * 0;
    imageBackgroundY = appHeight * 0;
    imageBackgroundWidth = appWidth-1;
    imageBackgroundHeight = appHeight-1;
    topHalfX = appWidth * 1/4;
    topHalfY = appHeight * 8/20;
    topHalfWidth = appWidth * 1/2;
    topHalfHeight = appHeight * 3/4;
    bottomHalfX = appWidth * 2/30;
    bottomHalfY = appHeight * 5/10;
    bottomHalfWidth = appWidth * 1/4;
    bottomHalfHeight = appHeight * 3/4;
    //Rectangle Layout and Image drawing to CANVAS
    rect(topHalfX, topHalfY, topHalfWidth, topHalfHeight);
    rect(bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight);
    rect(imageBackgroundX, imageBackgroundY, picWidthAdjusted, picHeightAdjusted);
    //
    image( pic, imageBackgroundX, imageBackgroundY, picWidthAdjusted, picHeightAdjusted);
  }
}

//End Setup
//
void draw() { 
  //image( topHalfX, topHalfY, topHalfWidth, topHalfHeight );
  //image( bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight );
}//End draw
void keyPressed() {
}//End keyPressed
void mousePressed() {
}//End mousePressed 
//
//Developer verified variables

//
//Rectangle Layout and Image drawing to CANVAS
