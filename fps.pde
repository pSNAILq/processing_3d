import processing.opengl.*;

Field field ;
PApplet pa_fps = this;

void setup() {
  size(1000, 1000, OPENGL);
  frameRate(30);
  smooth();
  noStroke();
  field = new Field();
}

void draw() {
  background(100);
  field.run();
}



