class Animals {
  //this method will be overrided
  void sound() {
    print('every animals makes sound');
  }
}

class Dog extends Animals {
  //method overriding
  @override
  void sound() {
    print('dog barks');
  }
}

void main() {
  //accessing animal with dog object
  Animals dog = Dog();
  dog.sound();
}
