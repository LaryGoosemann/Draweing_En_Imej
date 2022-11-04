//Global Variables
  int appWidth, appHeight;
  float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
  PImage pic;
//
  size(1200,675); //Landscape
//Copy Display Orientation
  appWidth = width-1;
  appHeight = height-1;
//
//Population
 pic = loadImage("../IMAGES USED/SHNEED.jpg");
 imageBackgroundX = appWidth * 0;
 imageBackgroundY = appHeight * 0;
 imageBackgroundWidth = appWidth;
 imageBackgroundHeight = appHeight;
//Rectangle Layout and Image drawing to CANVAS
  rect(imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
  image(pic, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
