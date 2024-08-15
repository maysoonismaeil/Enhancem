// When the mouse is pressed on the screen
void mousePressed() {  
  addPoint();  
}

// When the mouse is dragged on the screen
void mouseDragged() {
  addPoint();
}

// When the mouse is released
void mouseReleased() {  
  marker.states.set(marker.states.size()-1, 1);  
}

// Creates a point at the mouse location
void addPoint() {
  
   // Creates a point at the location of the mouse
   PVector point = new PVector(mouseX, mouseY); 
   marker.points.add(point);
   
   // Allocates the colour and size of that point
   marker.redColours.append(markerCR);
   marker.greenColours.append(markerCG);
   marker.blueColours.append(markerCB);
   marker.sizes.append(marker.size);
   marker.states.append(0);

}
