class Field {
  ArrayList<Bullet> bullets = new ArrayList<Bullet>(); 
  Bullet bullet;
  Player player;
  Enemy enemy;
  Object obj;

  Field() {
    bullet = new Bullet();
    player = new Player();
    enemy = new Enemy(0, 0, 0);
    obj = new Object();
  }

  void run() {
    //    b.run();
    player.run();
    obj.run();
    enemy.draw();
  }
}

