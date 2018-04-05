class Bullet {
  //ArrayList<ArrayList<Float>> bullet = new ArrayList<ArrayList<Float>>();
  int num = 6;//num_pol

  ArrayList<Float> bullet = new ArrayList<Float>();
  Bullet() {
    create();
  }

  void create() {
    for (int i = 0; i<num+1; i++) {
      float a = (360/num)*i;
      this.bullet.add(a);
    }
  }




  void run() {
    println(bullet.size());
    for (int i= 0; i<bullet.size(); i++) {
      text("["+i+"]"+bullet.get(i), 500, (i*15)+15);
    }
  }
  

}

