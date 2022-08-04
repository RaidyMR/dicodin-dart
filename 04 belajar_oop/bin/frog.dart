import 'animal.dart';
import 'Mixin.dart';

class Frog extends Animal with Walkable, Swimmable {
  late String skinColor;

  Frog(String name, int age, double weight, String skinColor)
      : super(name, age, weight) {
    this.skinColor = skinColor;
  }
}
