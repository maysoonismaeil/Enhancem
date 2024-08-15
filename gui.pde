/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw3(PApplet appc, GWinData data) { //_CODE_:GUI:449438:
  appc.background(230);
} //_CODE_:GUI:449438:

public void inputFileName(GTextField source, GEvent event) { //_CODE_:fileNameText:917437:
} //_CODE_:fileNameText:917437:

public void loadsImage(GButton source, GEvent event) { //_CODE_:loadButton:505606:
  
  loadImage = true;
  fileName = fileNameText.getText(); // grabbing the file name from the user
  setControllerValues(); // resetting all controller values
  
  // Moving off the menu screen (if a valid image is uploaded)
  if (loadImage(fileName) != null) 
    onMenuScreen = false;

} //_CODE_:loadButton:505606:

public void resetButton(GButton source, GEvent event) { //_CODE_:resetsAll:787002:
  setControllerValues();
} //_CODE_:resetsAll:787002:

public void changeRedTint(GSlider source, GEvent event) { //_CODE_:redTintVar:326157:
  image.tintRed = redTintVar.getValueF();
} //_CODE_:redTintVar:326157:

public void changeBlueTint(GSlider source, GEvent event) { //_CODE_:blueTintVar:292105:
  image.tintBlue = blueTintVar.getValueF();
} //_CODE_:blueTintVar:292105:

public void changeOpac(GSlider source, GEvent event) { //_CODE_:opacVar:591593:
  image.opacity = (opacVar.getValueF())*2.55;
} //_CODE_:opacVar:591593:

public void downloadButton(GButton source, GEvent event) { //_CODE_:downloadImage:514529:
  saveImage = true;
} //_CODE_:downloadImage:514529:

public void changeGreenTint(GSlider source, GEvent event) { //_CODE_:greenTintVar:731600:
  image.tintGreen = greenTintVar.getValueF();
} //_CODE_:greenTintVar:731600:

public void changeRotation(GSlider source, GEvent event) { //_CODE_:rotationVar:329222:
  image.angle = rotationVar.getValueF();
} //_CODE_:rotationVar:329222:

public void changeSize(GSlider source, GEvent event) { //_CODE_:sizeVar:504984:
  
  if (sizeVar.getValueF() == 10)
    image.size = 0.1;
  
  else
    image.size = 10-sizeVar.getValueF();  
  
} //_CODE_:sizeVar:504984:

public void menuButton(GButton source, GEvent event) { //_CODE_:exitToMenu:395623:
  exitToMenu();
} //_CODE_:exitToMenu:395623:

public void makeGreyscale(GCheckbox source, GEvent event) { //_CODE_:greyScaleVar:910991:
  greyscale = !greyscale;
} //_CODE_:greyScaleVar:910991:

public void invertsImage(GCheckbox source, GEvent event) { //_CODE_:invertedImage:869157:
  invert = !invert; 
} //_CODE_:invertedImage:869157:

public void changeImageX(GSlider source, GEvent event) { //_CODE_:imageXVar:915207:
  image.imageX = int(imageXVar.getValueF());
} //_CODE_:imageXVar:915207:

public void changeImageY(GSlider source, GEvent event) { //_CODE_:imageYVar:535923:
  image.imageY = 600-int(imageYVar.getValueF());
} //_CODE_:imageYVar:535923:

public void changeImageBlur(GSlider source, GEvent event) { //_CODE_:imageBlurVar:330706:
  image.blur = imageBlurVar.getValueF();
} //_CODE_:imageBlurVar:330706:

public void createBlankCanvas(GButton source, GEvent event) { //_CODE_:blankCanvaas:784760:
  fileName = "blank";
  loadImage = true;
  onMenuScreen = false;
  setControllerValues();
} //_CODE_:blankCanvaas:784760:

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:MarkerControls:925831:
  appc.background(230);
} //_CODE_:MarkerControls:925831:

public void changeMarkerRed(GSlider source, GEvent event) { //_CODE_:markerRed:615929:
  markerCR = markerRed.getValueF();
} //_CODE_:markerRed:615929:

public void changeMarkerGreen(GSlider source, GEvent event) { //_CODE_:markerGreen:880663:
  markerCG = markerGreen.getValueF();
} //_CODE_:markerGreen:880663:

public void changeMarkerBlue(GSlider source, GEvent event) { //_CODE_:markerBlue:886650:
  markerCB = markerBlue.getValueF();
} //_CODE_:markerBlue:886650:

public void changeMarkerSize(GSlider source, GEvent event) { //_CODE_:markerSize:279388:
  marker.size = markerSize.getValueF();
} //_CODE_:markerSize:279388:

public void eraseButton(GButton source, GEvent event) { //_CODE_:eraseMarker:521029:
  marker.clearScreen();
} //_CODE_:eraseMarker:521029:

public void backGridCheck(GCheckbox source, GEvent event) { //_CODE_:backGrid:321447:
  grid = !grid;
} //_CODE_:backGrid:321447:

public void textFieldChange(GTextField source, GEvent event) { //_CODE_:textField:592273:
  text = textField.getText();
} //_CODE_:textField:592273:

public void inputTextButton(GButton source, GEvent event) { //_CODE_:inputText:447786:
  placeText = true;
} //_CODE_:inputText:447786:

public void deleteTextButton(GButton source, GEvent event) { //_CODE_:deleteText:698704:
  placeText = false;
} //_CODE_:deleteText:698704:

public void changeTextX(GSlider source, GEvent event) { //_CODE_:textLocationX:211612:
  textX = int(textLocationX.getValueF());
} //_CODE_:textLocationX:211612:

public void changeTextY(GSlider source, GEvent event) { //_CODE_:textLocationY:667295:
  textY = 600-int(textLocationY.getValueF());
} //_CODE_:textLocationY:667295:

public void resetMarkerButton(GButton source, GEvent event) { //_CODE_:resetMarker:230793:
  
  markerRed.setValue(0);
  markerGreen.setValue(0);
  markerBlue.setValue(0);
  markerSize.setValue(1);
    
  markerCR = 0;
  markerCG = 0;
  markerCB = 0;
  markerS = 1;
  
} //_CODE_:resetMarker:230793:

public void changeTextRed(GSlider source, GEvent event) { //_CODE_:textRed:992592:
  textR = textRed.getValueF();
} //_CODE_:textRed:992592:

public void changeTextGreen(GSlider source, GEvent event) { //_CODE_:textGreen:697104:
  textG = textGreen.getValueF();
} //_CODE_:textGreen:697104:

public void changeTextBlue(GSlider source, GEvent event) { //_CODE_:textBlue:456023:
  textB = textBlue.getValueF();
} //_CODE_:textBlue:456023:

public void changeTextSize(GSlider source, GEvent event) { //_CODE_:textSizeVar:970399:
  textS = textSizeVar.getValueF();
} //_CODE_:textSizeVar:970399:

public void resetTextStuff(GButton source, GEvent event) { //_CODE_:textStuff:889531:
  
  textLocationX.setValue(300);
  textLocationY.setValue(300);
  
  textRed.setValue(0);
  textGreen.setValue(0);
  textBlue.setValue(0);
  textSizeVar.setValue(45);
  
} //_CODE_:textStuff:889531:

// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  GUI = GWindow.getWindow(this, "Control Window", 0, 0, 400, 600, JAVA2D);
  GUI.noLoop();
  GUI.setActionOnClose(G4P.KEEP_OPEN);
  GUI.addDrawHandler(this, "win_draw3");
  fileNameText = new GTextField(GUI, 26, 81, 120, 17, G4P.SCROLLBARS_NONE);
  fileNameText.setPromptText("Enter file name");
  fileNameText.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  fileNameText.setOpaque(true);
  fileNameText.addEventHandler(this, "inputFileName");
  loadButton = new GButton(GUI, 162, 81, 80, 20);
  loadButton.setText("Load");
  loadButton.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  loadButton.addEventHandler(this, "loadsImage");
  resetsAll = new GButton(GUI, 27, 547, 91, 30);
  resetsAll.setText("Reset");
  resetsAll.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  resetsAll.addEventHandler(this, "resetButton");
  label1 = new GLabel(GUI, 26, 16, 313, 20);
  label1.setText("CONTROLS: USE THESE TO ENHANCE YOUR IMAGE!");
  label1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label1.setOpaque(true);
  label2 = new GLabel(GUI, 26, 49, 74, 20);
  label2.setText("Load Image");
  label2.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  label2.setOpaque(true);
  label3 = new GLabel(GUI, 25, 115, 172, 20);
  label3.setText("Tinting (Red, Green, and Blue)");
  label3.setLocalColorScheme(GCScheme.RED_SCHEME);
  label3.setOpaque(true);
  label4 = new GLabel(GUI, 24, 210, 50, 20);
  label4.setText("Opacity");
  label4.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  label4.setOpaque(true);
  redTintVar = new GSlider(GUI, 24, 153, 100, 40, 10.0);
  redTintVar.setShowValue(true);
  redTintVar.setShowLimits(true);
  redTintVar.setLimits(255, 0, 255);
  redTintVar.setNumberFormat(G4P.INTEGER, 0);
  redTintVar.setLocalColorScheme(GCScheme.RED_SCHEME);
  redTintVar.setOpaque(false);
  redTintVar.addEventHandler(this, "changeRedTint");
  blueTintVar = new GSlider(GUI, 269, 153, 100, 40, 10.0);
  blueTintVar.setShowValue(true);
  blueTintVar.setShowLimits(true);
  blueTintVar.setLimits(255, 0, 255);
  blueTintVar.setNumberFormat(G4P.INTEGER, 0);
  blueTintVar.setOpaque(false);
  blueTintVar.addEventHandler(this, "changeBlueTint");
  opacVar = new GSlider(GUI, 25, 245, 100, 40, 10.0);
  opacVar.setShowValue(true);
  opacVar.setShowLimits(true);
  opacVar.setLimits(100, 0, 100);
  opacVar.setNumberFormat(G4P.INTEGER, 0);
  opacVar.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  opacVar.setOpaque(false);
  opacVar.addEventHandler(this, "changeOpac");
  downloadImage = new GButton(GUI, 153, 547, 91, 30);
  downloadImage.setText("Download");
  downloadImage.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  downloadImage.addEventHandler(this, "downloadButton");
  greenTintVar = new GSlider(GUI, 146, 153, 100, 40, 10.0);
  greenTintVar.setShowValue(true);
  greenTintVar.setShowLimits(true);
  greenTintVar.setLimits(255, 0, 255);
  greenTintVar.setNumberFormat(G4P.INTEGER, 0);
  greenTintVar.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  greenTintVar.setOpaque(false);
  greenTintVar.addEventHandler(this, "changeGreenTint");
  rotationVar = new GSlider(GUI, 143, 245, 100, 40, 10.0);
  rotationVar.setShowValue(true);
  rotationVar.setShowLimits(true);
  rotationVar.setLimits(0, 0, 360);
  rotationVar.setNumberFormat(G4P.INTEGER, 0);
  rotationVar.setOpaque(false);
  rotationVar.addEventHandler(this, "changeRotation");
  label5 = new GLabel(GUI, 144, 210, 55, 20);
  label5.setText("Rotation");
  label5.setOpaque(true);
  label6 = new GLabel(GUI, 261, 210, 79, 20);
  label6.setText("Zoom Factor");
  label6.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label6.setOpaque(true);
  sizeVar = new GSlider(GUI, 261, 245, 100, 40, 10.0);
  sizeVar.setShowValue(true);
  sizeVar.setShowLimits(true);
  sizeVar.setLimits(5, 0, 10);
  sizeVar.setNumberFormat(G4P.INTEGER, 0);
  sizeVar.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  sizeVar.setOpaque(false);
  sizeVar.addEventHandler(this, "changeSize");
  exitToMenu = new GButton(GUI, 277, 547, 80, 30);
  exitToMenu.setText("Menu");
  exitToMenu.addEventHandler(this, "menuButton");
  greyScaleVar = new GCheckbox(GUI, 217, 116, 81, 20);
  greyScaleVar.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  greyScaleVar.setText("Greyscale");
  greyScaleVar.setLocalColorScheme(GCScheme.RED_SCHEME);
  greyScaleVar.setOpaque(true);
  greyScaleVar.addEventHandler(this, "makeGreyscale");
  invertedImage = new GCheckbox(GUI, 312, 116, 58, 20);
  invertedImage.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  invertedImage.setText("Invert");
  invertedImage.setLocalColorScheme(GCScheme.RED_SCHEME);
  invertedImage.setOpaque(true);
  invertedImage.addEventHandler(this, "invertsImage");
  imageXVar = new GSlider(GUI, 24, 328, 340, 40, 10.0);
  imageXVar.setShowValue(true);
  imageXVar.setShowLimits(true);
  imageXVar.setLimits(300, 0, 600);
  imageXVar.setNumberFormat(G4P.INTEGER, 0);
  imageXVar.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  imageXVar.setOpaque(false);
  imageXVar.addEventHandler(this, "changeImageX");
  label7 = new GLabel(GUI, 24, 299, 108, 20);
  label7.setText("Image Location (x)");
  label7.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  label7.setOpaque(true);
  label8 = new GLabel(GUI, 24, 379, 108, 20);
  label8.setText("Image Location (y)");
  label8.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  label8.setOpaque(true);
  imageYVar = new GSlider(GUI, 24, 408, 340, 40, 10.0);
  imageYVar.setShowValue(true);
  imageYVar.setShowLimits(true);
  imageYVar.setLimits(300, 0, 600);
  imageYVar.setNumberFormat(G4P.INTEGER, 0);
  imageYVar.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  imageYVar.setOpaque(false);
  imageYVar.addEventHandler(this, "changeImageY");
  label9 = new GLabel(GUI, 24, 462, 71, 20);
  label9.setText("Image Blur");
  label9.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  label9.setOpaque(true);
  imageBlurVar = new GSlider(GUI, 24, 491, 340, 40, 10.0);
  imageBlurVar.setShowValue(true);
  imageBlurVar.setShowLimits(true);
  imageBlurVar.setLimits(0, 0, 10);
  imageBlurVar.setNumberFormat(G4P.INTEGER, 0);
  imageBlurVar.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  imageBlurVar.setOpaque(false);
  imageBlurVar.addEventHandler(this, "changeImageBlur");
  blankCanvaas = new GButton(GUI, 256, 81, 104, 20);
  blankCanvaas.setText("Blank Canvas");
  blankCanvaas.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  blankCanvaas.addEventHandler(this, "createBlankCanvas");
  MarkerControls = GWindow.getWindow(this, "Other Control Window", 1040, 0, 395, 600, JAVA2D);
  MarkerControls.noLoop();
  MarkerControls.setActionOnClose(G4P.KEEP_OPEN);
  MarkerControls.addDrawHandler(this, "win_draw1");
  markerRed = new GSlider(MarkerControls, 17, 80, 100, 40, 10.0);
  markerRed.setShowValue(true);
  markerRed.setShowLimits(true);
  markerRed.setLimits(0, 0, 255);
  markerRed.setNumberFormat(G4P.INTEGER, 0);
  markerRed.setLocalColorScheme(GCScheme.RED_SCHEME);
  markerRed.setOpaque(false);
  markerRed.addEventHandler(this, "changeMarkerRed");
  label10 = new GLabel(MarkerControls, 17, 17, 129, 20);
  label10.setText("MARKER CONTROLS:");
  label10.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label10.setOpaque(true);
  markerGreen = new GSlider(MarkerControls, 142, 80, 100, 40, 10.0);
  markerGreen.setShowValue(true);
  markerGreen.setShowLimits(true);
  markerGreen.setLimits(0, 0, 255);
  markerGreen.setNumberFormat(G4P.INTEGER, 0);
  markerGreen.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  markerGreen.setOpaque(false);
  markerGreen.addEventHandler(this, "changeMarkerGreen");
  markerBlue = new GSlider(MarkerControls, 267, 80, 100, 40, 10.0);
  markerBlue.setShowValue(true);
  markerBlue.setShowLimits(true);
  markerBlue.setLimits(0, 0, 255);
  markerBlue.setNumberFormat(G4P.INTEGER, 0);
  markerBlue.setOpaque(false);
  markerBlue.addEventHandler(this, "changeMarkerBlue");
  markerSize = new GSlider(MarkerControls, 17, 167, 106, 40, 10.0);
  markerSize.setShowValue(true);
  markerSize.setShowLimits(true);
  markerSize.setLimits(1, 1, 5);
  markerSize.setNumberFormat(G4P.INTEGER, 0);
  markerSize.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  markerSize.setOpaque(false);
  markerSize.addEventHandler(this, "changeMarkerSize");
  eraseMarker = new GButton(MarkerControls, 154, 170, 75, 30);
  eraseMarker.setText("Erase All");
  eraseMarker.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  eraseMarker.addEventHandler(this, "eraseButton");
  label11 = new GLabel(MarkerControls, 17, 48, 360, 20);
  label11.setText("Marker Colour (Amount of Red, Amount of Green, Amount of Blue)");
  label11.setLocalColorScheme(GCScheme.RED_SCHEME);
  label11.setOpaque(true);
  label12 = new GLabel(MarkerControls, 17, 134, 104, 20);
  label12.setText("Marker Thickness");
  label12.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  label12.setOpaque(true);
  backGrid = new GCheckbox(MarkerControls, 263, 16, 115, 20);
  backGrid.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  backGrid.setText("Background Grid");
  backGrid.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  backGrid.setOpaque(true);
  backGrid.addEventHandler(this, "backGridCheck");
  backGrid.setSelected(true);
  label13 = new GLabel(MarkerControls, 147, 134, 92, 20);
  label13.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label13.setText("Remove Marker");
  label13.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  label13.setOpaque(true);
  textField = new GTextField(MarkerControls, 17, 257, 120, 17, G4P.SCROLLBARS_NONE);
  textField.setPromptText("Enter text here");
  textField.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  textField.setOpaque(true);
  textField.addEventHandler(this, "textFieldChange");
  label14 = new GLabel(MarkerControls, 17, 224, 110, 20);
  label14.setText("TEXT CONTROLS:");
  label14.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  label14.setOpaque(true);
  inputText = new GButton(MarkerControls, 155, 255, 80, 22);
  inputText.setText("Input Text");
  inputText.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  inputText.addEventHandler(this, "inputTextButton");
  deleteText = new GButton(MarkerControls, 250, 255, 80, 22);
  deleteText.setText("Delete Text");
  deleteText.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  deleteText.addEventHandler(this, "deleteTextButton");
  label15 = new GLabel(MarkerControls, 17, 293, 97, 20);
  label15.setText("Text Location (x)");
  label15.setOpaque(true);
  label16 = new GLabel(MarkerControls, 17, 370, 99, 20);
  label16.setText("Text Location (y)");
  label16.setOpaque(true);
  textLocationX = new GSlider(MarkerControls, 17, 321, 360, 40, 10.0);
  textLocationX.setShowValue(true);
  textLocationX.setShowLimits(true);
  textLocationX.setLimits(300, 0, 600);
  textLocationX.setNumberFormat(G4P.INTEGER, 0);
  textLocationX.setOpaque(false);
  textLocationX.addEventHandler(this, "changeTextX");
  textLocationY = new GSlider(MarkerControls, 17, 395, 360, 40, 10.0);
  textLocationY.setShowValue(true);
  textLocationY.setShowLimits(true);
  textLocationY.setLimits(300, 0, 600);
  textLocationY.setNumberFormat(G4P.INTEGER, 0);
  textLocationY.setOpaque(false);
  textLocationY.addEventHandler(this, "changeTextY");
  label17 = new GLabel(MarkerControls, 266, 134, 92, 20);
  label17.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label17.setText("Reset Controls");
  label17.setOpaque(true);
  resetMarker = new GButton(MarkerControls, 273, 173, 70, 30);
  resetMarker.setText("Reset");
  resetMarker.addEventHandler(this, "resetMarkerButton");
  textRed = new GSlider(MarkerControls, 17, 485, 100, 40, 10.0);
  textRed.setShowValue(true);
  textRed.setShowLimits(true);
  textRed.setLimits(0, 0, 255);
  textRed.setNumberFormat(G4P.INTEGER, 0);
  textRed.setLocalColorScheme(GCScheme.RED_SCHEME);
  textRed.setOpaque(false);
  textRed.addEventHandler(this, "changeTextRed");
  textGreen = new GSlider(MarkerControls, 143, 485, 100, 40, 10.0);
  textGreen.setShowValue(true);
  textGreen.setShowLimits(true);
  textGreen.setLimits(0, 0, 255);
  textGreen.setNumberFormat(G4P.INTEGER, 0);
  textGreen.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  textGreen.setOpaque(false);
  textGreen.addEventHandler(this, "changeTextGreen");
  textBlue = new GSlider(MarkerControls, 268, 485, 100, 40, 10.0);
  textBlue.setShowValue(true);
  textBlue.setShowLimits(true);
  textBlue.setLimits(0, 0, 255);
  textBlue.setNumberFormat(G4P.INTEGER, 0);
  textBlue.setOpaque(false);
  textBlue.addEventHandler(this, "changeTextBlue");
  label18 = new GLabel(MarkerControls, 17, 450, 348, 20);
  label18.setText("Text Colour (Amount of Red, Amount of Green, Amount of Blue)");
  label18.setLocalColorScheme(GCScheme.RED_SCHEME);
  label18.setOpaque(true);
  label19 = new GLabel(MarkerControls, 20, 550, 57, 20);
  label19.setText("Text Size");
  label19.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  label19.setOpaque(true);
  textSizeVar = new GSlider(MarkerControls, 90, 539, 200, 40, 10.0);
  textSizeVar.setShowValue(true);
  textSizeVar.setShowLimits(true);
  textSizeVar.setLimits(45, 10, 80);
  textSizeVar.setNumberFormat(G4P.INTEGER, 0);
  textSizeVar.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  textSizeVar.setOpaque(false);
  textSizeVar.addEventHandler(this, "changeTextSize");
  textStuff = new GButton(MarkerControls, 306, 542, 67, 33);
  textStuff.setText("Reset");
  textStuff.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  textStuff.addEventHandler(this, "resetTextStuff");
  GUI.loop();
  MarkerControls.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow GUI;
GTextField fileNameText; 
GButton loadButton; 
GButton resetsAll; 
GLabel label1; 
GLabel label2; 
GLabel label3; 
GLabel label4; 
GSlider redTintVar; 
GSlider blueTintVar; 
GSlider opacVar; 
GButton downloadImage; 
GSlider greenTintVar; 
GSlider rotationVar; 
GLabel label5; 
GLabel label6; 
GSlider sizeVar; 
GButton exitToMenu; 
GCheckbox greyScaleVar; 
GCheckbox invertedImage; 
GSlider imageXVar; 
GLabel label7; 
GLabel label8; 
GSlider imageYVar; 
GLabel label9; 
GSlider imageBlurVar; 
GButton blankCanvaas; 
GWindow MarkerControls;
GSlider markerRed; 
GLabel label10; 
GSlider markerGreen; 
GSlider markerBlue; 
GSlider markerSize; 
GButton eraseMarker; 
GLabel label11; 
GLabel label12; 
GCheckbox backGrid; 
GLabel label13; 
GTextField textField; 
GLabel label14; 
GButton inputText; 
GButton deleteText; 
GLabel label15; 
GLabel label16; 
GSlider textLocationX; 
GSlider textLocationY; 
GLabel label17; 
GButton resetMarker; 
GSlider textRed; 
GSlider textGreen; 
GSlider textBlue; 
GLabel label18; 
GLabel label19; 
GSlider textSizeVar; 
GButton textStuff; 
