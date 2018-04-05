import saito.objloader.*;

class Object {
  OBJModel togeboy;

  Object() {
    togeboy = new OBJModel(pa_fps, "togeboy.obj", "absolute", POLYGON);
  }
  void run() {
    test();
  }
  void test() {
    togeboy.enableMaterial();
    togeboy.enableTexture();
    pushMatrix();
    togeboy.draw();
    popMatrix();
  }
}

