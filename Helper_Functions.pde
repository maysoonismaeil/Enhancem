// Drawing the menu screen
void menu() {
  
  // Setting the text size and background
  textSize(40);
  background(217, 234, 211);
  
  // Drawing the grid lines
  for (int i = 0; i < height; i += 100) {
    
    stroke(39, 78, 19, 50);
    strokeWeight(3);
    line(0, i+50, width, i+50);
    line(i+50, 0, i+50, height);
  
  }
  
  // Displaying the menu text
  
  fill(39, 78, 19);  
  
  textSize(40);
  text("ENHANCEM", (width/2), (height/2)-2);
  
  textSize(20);
  text("Enhance your images today!", (width/2)+1, (height/2)+30);

}

// Drawing the background grid
void drawGrid() {
  
  for (int i = 0; i < height; i += 20) {
      
      stroke(39, 78, 19, 50);
      strokeWeight(3);
      line(0, i+20, width, i+20);
      line(i+20, 0, i+20, height);
      
  }  

}

// Exiting to menu
void exitToMenu() {

  // Resetting variables
  imageVisual = null;
  loadImage = false;
  onMenuScreen = true;
  setControllerValues();

}

// Resetting all controller values
void setControllerValues() {
  
  // Image variables
  fileNameText.setText(null);
  redTintVar.setValue(255);
  greenTintVar.setValue(255);
  blueTintVar.setValue(255);
  opacVar.setValue(100);
  imageBlurVar.setValue(0);
  rotationVar.setValue(0);
  sizeVar.setValue(5);
  
  // Location variables
  imageXVar.setValue(300);
  imageYVar.setValue(300);
  textLocationX.setValue(300);
  textLocationY.setValue(300); 
  
  // Marker variables
  markerRed.setValue(0);
  markerGreen.setValue(0);
  markerBlue.setValue(0);
  markerSize.setValue(1);
  
  // Text variables
  textRed.setValue(0);
  textGreen.setValue(0);
  textBlue.setValue(0);
  textSizeVar.setValue(45);
  
  // Other variables
  greyScaleVar.setSelected(false);
  invertedImage.setSelected(false);
  backGrid.setSelected(true);
  
  saveImage = false;
  placeText = false;
  greyscale = false;
  invert = false;
  grid = true;
   
  tintRed = 255;
  tintGreen = 255;
  tintBlue = 255;
  size = 5;
  
  angle = 0;
  blur = 0;

  opacity = 255;
  
  markerCR = 0;
  markerCG = 0;
  markerCB = 0;
  markerS = 1;
  
  textX = 300;
  textY = 300;
  textR = 0;
  textG = 0;
  textB = 0;
  textS = 40;
  
  // Clearing screen of any drawings
  marker.clearScreen();
 
}
