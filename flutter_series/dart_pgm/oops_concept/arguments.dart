// Positional Parameter
void greet(String Content) {
  print('Hello $Content');
}

//Named parameter
void age({int? a}) {
  print('my age is $a');
}

//Default Named parameter
void name({String name = 'ishita'}) {
  print('default name will be called which is $name');
}

// Opitional Named Parameteer
void op([int? a]) {
  print('it will allow you to use null value , ex a= $a');
}

//required parameter
void requiredNamed({required int a}) {
  print('value is $a');
}

void main() {
  greet('everyone');
  age(a: 12);
  name();
  op(); //will take null
  requiredNamed(a: 10);
}
