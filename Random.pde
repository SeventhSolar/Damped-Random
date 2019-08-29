Tube_Stack stack;

float x3;
float x2 = 0;
float x1 = 0;

void setup() {
  size(900, 400);
  background(0);
  stroke(255);
  stack = new Tube_Stack(16);
}


int wait = 60;
int next = wait;

void draw() {
  next--;
  if (next <= 0) {
    next = wait;
    background(0);
    
    stack.push(new Instance());
    float start = stack.read(0).start();
    for (int i = 1; i < 16; i++) {
      start = stack.read(i).print(i, start);
    }
    
    text("x1: " + (int)(x1*100), 825, 100);
    text("x2: " + (int)(x2*100), 825, 200);
    text("x3: " + (int)(x3*100), 825, 300);
  }
}
