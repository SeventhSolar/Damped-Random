class Tube_Stack {
  
  final Instance[] stack;
  final int capacity;
  private int top;
  
  Tube_Stack(int cap) {
    stack = new Instance[cap];
    capacity = cap;
    top = capacity - 1;
    for (int i = 0; i < cap; i++)
      stack[i] = new InstanceEmpty();
  }
  
  
  
  void push(Instance obj) {
    top = (top - 1 + capacity) % capacity;
    stack[top] = obj;
  }
  
  void pop() {}
  
  Instance read(int index) {
    return stack[(top + index) % capacity];
  }
  
}
