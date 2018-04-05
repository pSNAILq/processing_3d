class Player {

  PVector direction = new PVector(0, 0, 1);
  PVector eye = new PVector(0, 0, 1);
  float theta = 0;
  float jump_power = 0;//脚力
  float g = 4;
  float a = 0;
  boolean limit = false;//跳躍限界 t:頂点 
  boolean landed_flag = true;//spaceフラグ t:可 f:不可
  boolean jumped = false;//jump_flag t:jump

  Player() {
  }

  void run() {
    view();
    println(jumped);
    println(eye.y);
    //crosshair(mouseX,mouseY);
  }


  void key_act() {

    if (keyPressed) {
      switch(key) {
      case 'a':
        eye.x +=  cos(theta-PI/2)*10;
        eye.z +=  sin(theta-PI/2)*10;
        break;
      case 'd':
        eye.x -=  cos(theta-PI/2)*10;
        eye.z -=  sin(theta-PI/2)*10;
        break;
      case 'w':
        eye.x += direction.x*10;
        eye.z += direction.z*10;
        break;
      case 's':
        eye.x -= direction.x*10;
        eye.z -= direction.z*10;
        break;
      }
    }
  }

  void mouse_input() {
    theta = map(mouseX, 0.width, -PI, PI);

    direction.x = cos(theta);
    direction.z = sin(theta);
  }

  void basic_motion() {
    if (eye.y <= 10) {
      eye.y += g;
    }
  }

  void jump() {
    //着地かつ跳躍力限界以内
  }

  void p() {
    println(eye.x+":"+eye.y+":"+eye.z);
    camera(eye.z, -150, eye.z, eye.x+direction.x, -150, eye.z+direction.z, 0, 1, 0);
    //camera(eye.x, eye.y, eye.z, center.x, center.y, center.z, 0, 1, 0);
  }

  void view() {
    mouse_input();

    //    basic_motion();
    key_act();
    p();
    //    jump();
  }

  void crosshair(float x, float y) {
    line(x-50, y, x-100, y);//right
    line(x, y-50, x, y-100);//top
    line(x+50, y, 5+100, y);//left
    line(x, y+50, x, y+100);//bot
  }
}

