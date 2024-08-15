// Photo Editor Program: Enhancem

// Importing packages 
import g4p_controls.*;

// Initializing variables

PImage imageVisual; // image edited
PFont candara; // font used

// Marker variables

// RGB values of marker colour
float markerCR = 0;
float markerCG = 0;
float markerCB = 0;

// Marker size
float markerS = 1; 

// Image variables

float tintRed = 255; // red tint
float tintGreen = 255; // green tint
float tintBlue = 255; // blue tint
int imageX = 300; // location (x)
int imageY = 300; // location (y)
float size = 5; // size

float angle = 0; // rotation angle
float blur = 0; // amount of blur
float opacity = 255; // opaqueness

String fileName; // name of image file

// Booleans used
boolean grid = true;
boolean onMenuScreen = true;
boolean saveImage = false;
boolean loadImage = false;
boolean greyscale = false;
boolean invert = false;

// Creating image and marker objects
Image image = new Image(imageVisual, imageX, imageY, tintRed, tintGreen, tintBlue, opacity, blur, angle, size);
Marker marker = new Marker(markerCR, markerCG, markerCB, markerS);

// Text variables

String text; // the actual text
boolean placeText = false; 

float textX = 300; // initial x position
float textY = 300; // initial y position
float textR = 0; // initial red colour value (RGB)
float textG = 0; // initial green colour value (RGB)
float textB = 0; // initial blue colour value (RGB)
float textS = 45; // size

// Setting up the program (run once at the beginning)
void setup() {
  
  // Setting the size and modes
  size(600, 600);
  textAlign(CENTER);
  imageMode(CENTER);
  colorMode(RGB);
  
  // Creating the font
  candara = createFont("Candara", 40);
  textFont(candara);

  // Creating the GUI
  createGUI();

}

// Main function (run every frame)
void draw() {
  
  // Displays menu screen when appropriate 
  if (loadImage == false)
    menu();
      
  // Draws the image if possible (that is, it is a valid image)
  else if (fileName != null && loadImage == true && onMenuScreen == false) {
 
      try {
        
        // Clears the screen and sets the background
        clear();
        background(255);
        
        // Draws the grid when requested
        if (grid == true)
          drawGrid();
        
        // Loads the image    
        
        if (fileName.equals("blank") == false)
          image.imageVisual = loadImage(fileName);        
        
        else 
          image.imageVisual = null;
          
        // Sets the marker colour
        marker.colour = color(markerCR, markerCG, markerCB);

        if (image.imageVisual != null) {

          // Applies filters to the image
          image.changeOpac(); // changes opacity of image
          image.addTint(); // changes tint of image
          image.greyscaleImage(); // makes image greyscale
          image.invertImage(); // inverts the image
          image.blurImage(); // blurs the image
            
          // Draws the image
          image.drawImage();
          
        }

        // Displays everything drawn with the marker
        marker.drawOnScreen();
                
        // Displays and places any text
        if (placeText == true) {
          
          textSize(textS); // sets text size
          fill(textR, textG, textB); // sets text colour
          text(text, textX, textY); // inputs text at proper location

        }  
        
        // Saves the current image/sketch if prompted
        if (saveImage == true) {
          
          // An edited image is being saved
          if (image.imageVisual != null)          
            saveFrame("data/edited" + fileName);
          
          // A drawing/sketch is being saved
          else        
            saveFrame("data/newSketch");
          
          // Resets the boolean variable
          saveImage = false;
          
        }

      }
      
      catch (Exception e) {}

  }
  
}
