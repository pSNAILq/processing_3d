import saito.objloader.*;
class Enemy {
  OBJModel togeboy;
  PVector enemy_pos;
  Enemy(float x, float y, float z) {
    togeboy = new OBJModel(pa_fps, "togeboy.obj", "absolute", POLYGON);
    togeboy.enableMaterial();
    togeboy.enableTexture();
    enemy_pos = new PVector(x, y, z);
  }

  void draw() {
    pushMatrix();
    translate(enemy_pos.x, enemy_pos.y, enemy_pos.z);
    togeboy.draw();
    popMatrix();
  }

  void create() {
  }
}

