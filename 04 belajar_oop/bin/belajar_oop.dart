import 'package:belajar_oop/belajar_oop.dart' as belajar_oop;

/// enumerated types
enum Rainbow { red, orange, yellow, green, blue, indigo, violet }

enum Status { Todo, In_Progress, In_Review, Done }

void main(List<String> arguments) {
  print('Hello world: ${belajar_oop.calculate()}!');

  /// implementasi enum 1
  print(Rainbow.values);
  print(Rainbow.blue);
  print(Rainbow.orange.index);

  /// implementasi enum 2
  var taskStatus = Status.In_Progress;

  switch (taskStatus) {
    case Status.Todo:
      print('Task is still in To do');
      break;
    case Status.In_Progress:
      print('Task is in progress');
      break;
    case Status.In_Review:
      print('Task is currently under review');
      break;
    case Status.Done:
      print('Task is done');
      break;
  }
}
