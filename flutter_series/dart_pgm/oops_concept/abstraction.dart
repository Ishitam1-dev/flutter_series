abstract class Vehical {
  //must make class abstract to define only methods/ var without body
  void start();
}

class Bike extends Vehical {
  @override
  void start() {
    print('bikes start with key');
  }
}

void main() {
  Vehical v = Bike();
  v.start();
}
