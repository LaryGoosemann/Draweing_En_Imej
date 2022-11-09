//Global Variables
  int appWidth, appHeight;
  Boolean widthLarger=false, heightLarger=false;
  float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
  float imageWidthRatio=0.0, imageHeightRatio=0.0;
  float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
  PImage pic;
//
  void setup() 
  {
  size(1200,675); //Landscape
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
    if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
    //
    if ( appHeight >= picHeightAdjusted ) 
      picHeightAdjusted = picHeight;
      if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
      if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
    } else {
      //Image smaller than CANVAS needs separate algorithm
    }
  pic = loadImage("../IMAGES USED/SHNEED.jpg");
 imageBackgroundX = appWidth * 0;
 imageBackgroundY = appHeight * 0;
 imageBackgroundWidth = appWidth-1;
 imageBackgroundHeight = appHeight-1;
  }//End Setup
//
void draw() { image(pic, imageBackgroundX, imageBackgroundY, picWidthAdjusted, picHeightAdjusted);
}//End draw
void keyPressed() {
}//End keyPressed
void mousePressed() {
}//End mousePressed 
//
//Developer verified variables

//
//Rectangle Layout and Image drawing to CANVAS
 
