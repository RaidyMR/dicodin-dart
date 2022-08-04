import 'package:belajar_dart/belajar_dart.dart' as belajar_dart;
import 'dart:io';

void main(List<String> arguments) {
  // program dart pertama
  print('Hello world: ${belajar_dart.calculate()}!');

  // imput nama dan usia
  print('Nama Anda : ');
  String name = stdin.readLineSync()!;
  print('Usia Anda : ');
  int age = int.parse(stdin.readLineSync()!);
  print('Halo $name, usia Anda $age tahun');
}
