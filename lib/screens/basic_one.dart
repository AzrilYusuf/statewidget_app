void main() {
  String name = 'Flutter';
  int age = 5;
  double height = 1.8;
  bool isAwesome = true;

  print('Name: $name');
  print('Age: $age');
  print('Height: $height');
  print('Is Awesome: $isAwesome');

  // Lists
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  print('Fruits: $fruits');

  // Maps
  Map<String, int> scores = {'Alice': 100, 'Bob': 95, 'Charlie': 91};
  print('Scores: $scores');

  // Functions
  print('Sum: ${calculateSum(5, 10)}');

  // Control Flow
  for (String fruit in fruits) {
    print('I like $fruit');
  }

  if (age > 18) {
    print('$name is mature!');
  }
}

int calculateSum(int a, int b) {
  return a + b;
}
