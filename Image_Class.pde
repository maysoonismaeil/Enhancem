class Image {
  
  // FIELDS
  
  PImage imageVisual;
  
  float tintRed, tintGreen, tintBlue, size;
  int imageX, imageY;
  
  float opacity, blur, angle;
  
  // CONSTRUCTOR
   
  Image(PImage imgvs, int ix, int iy, float tr, float tg, float tb, float opac, float blur, float ang, float s) { 
    
    this.imageVisual = imgvs;
    this.tintRed = tr;
    this.tintGreen = tg;
    this.tintBlue = tb;
    this.opacity = opac;
    this.blur = blur;
    this.angle = ang;
    this.size = s+0.1;
    this.imageX = ix;
    this.imageY = iy;

  }
  
  // METHODS
  
  // Drawing the image
  void drawImage() {
    
    pushMatrix();
    translate(this.imageX, this.imageY); // moving the image  
    rotate(radians(this.angle)); // rotating the image
        
    // Drawing the image if possible
    if (this.imageVisual != null)
      image(this.imageVisual, 0, 0, (this.imageVisual.width)/this.size, (this.imageVisual.height)/this.size);        
    
    popMatrix();
  
  }

  // Tinting the image
  void addTint() {
    
    // Adding tint to the image if it is not currently greyscale (black and white)
    if (greyscale == false)   
      tint(this.tintRed, this.tintGreen, this.tintBlue, this.opacity);
      
  }
  
  // Making an image greyscale
  void greyscaleImage() {
    
    // Making every pixel greyscale if prompted to do so
    if (greyscale == true) {
      
      this.imageVisual.loadPixels();
    
      for (int y = 0; y < this.imageVisual.height; y++) {
        
        for (int x  = 0; x < this.imageVisual.width; x++) {
          
          int loc = y * this.imageVisual.width + x;
          
          // Determining the RGB of a specific pixel
          float r = red(this.imageVisual.pixels[loc]); 
          float g = green(this.imageVisual.pixels[loc]); 
          float b = blue(this.imageVisual.pixels[loc]); 
        
          // Making that pixel greyscale using the greyscale value formula
          float av = r*0.299 + g*0.587 + b*0.114;
          this.imageVisual.pixels[loc] = color(av, av, av);
        
        }
      
      }
  
    }
    
  }
  
  // Inverting an image's colours
  void invertImage() {
    
    // Inverting every pixel's colour if prompted to do so
    if (invert == true) {
    
      this.imageVisual.loadPixels();
    
      for (int y = 0; y < this.imageVisual.height; y++) {
        
        for (int x  = 0; x < this.imageVisual.width; x++) {
          
          int loc = y * this.imageVisual.width + x;
          
          // Determining the RGB of a specific pixel
          float r = red(this.imageVisual.pixels[loc]); 
          float g = green(this.imageVisual.pixels[loc]); 
          float b = blue(this.imageVisual.pixels[loc]); 
          
          // Making that pixel the invert colour
          this.imageVisual.pixels[loc] = color(255-r, 255-g, 255-b);
        
        }
      
      }
  
    }
    
  }
  
  // Changing the opacity of an image
  void changeOpac() {
    
    if ((tintRed == 255 && tintGreen == 255 && tintBlue == 255) || greyscale == true)   
      tint(255, this.opacity);

  }
  
  // Blurring an image
  void blurImage() {
    
    if (this.blur != 0) 
      this.imageVisual.filter(BLUR, this.blur);
  
  }

}
