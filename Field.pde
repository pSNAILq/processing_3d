class Field {
  ArrayList<Bullet> bullets = new ArrayList<Bullet>(); 
  Bullet b;
  Player p;
  Object obj;
  
  Field() {
    b = new Bullet();
    p = new Player();
    obj = new Object();
  }

  void run() {
//    b.run();
    p.run();
    obj.run();
  }
}

