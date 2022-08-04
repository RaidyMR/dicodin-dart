import 'animal.dart';

class Fish extends Animal {
  late String scaleColor;

  Fish(String name, int age, double weight, String scaleColor)
      : super(name, age, weight) {
    this.scaleColor = scaleColor;
  }

  void swim() {
    print('$name is swimming');
  }
}
