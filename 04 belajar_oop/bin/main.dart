import 'bird.dart';
import 'cat.dart';
import 'fish.dart';
import 'frog.dart';
import 'extension.dart';

void main() {
  var dicodingBird = Bird('Beyo', 2, 3.5, 'Green');
  var dicodingCat = Cat('Grayson', 2, 2.2, 'Gray');
  var dicodingFish = Fish('Koi', 1, 0.6, 'White');
  var dicodingFrog = Frog('Froakie', 3, 2, 'Red');

  // bird
  dicodingBird.fly();
  dicodingBird.eat();
  print(dicodingBird.weight);

  // cat
  dicodingCat.walk();
  dicodingCat.eat();
  print(dicodingCat.weight);

  // fish
  dicodingFish.swim();
  dicodingFish.eat();
  print(dicodingFish.weight);

  // frog
  dicodingFrog.swim();
  dicodingFrog.walk();
  dicodingFrog.eat();
  print(dicodingFrog.weight);

  // cascade notation
  var homeCat = Cat('Oyen', 2, 4.2, 'Orange')
    ..walk()
    ..eat();

  // extension
  var unsortedNumbers = [2, 5, 3, 1, 4];
  print(unsortedNumbers);
  var sortedNumbers = unsortedNumbers.sortAsc();
  print(sortedNumbers);
}
