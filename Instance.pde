class Instance {
  
  float x0;
  
  Instance() {
    x3 = random(2) - 1;
    x2 += x3; //x2 %= 1;
    x1 += x2; //x1 %= 1;
    x0 = 1 + x3;
  }
  Instance(boolean stop) {}
  
  
  float start() { return x0; }
  float print(int pos, float start) {
    line(pos * 50 - 25, start * 200,
         pos * 50 + 25, x0 * 200);
    return x0;
  }
  
}





class InstanceEmpty extends Instance {
  
  InstanceEmpty() { super(false); }
  
  float print(int pos, float start) { return 1; }
}
