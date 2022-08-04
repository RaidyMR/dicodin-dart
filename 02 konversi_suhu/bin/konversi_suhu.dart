import 'dart:io';

void main() {
  /***
    > belum diuji setiap persamaan
    > beberapa kasus masih belum ditangani
      * nilai <= 0
      * desimal berapa digit?
  **/
  var satuan = ['celcius', 'fahrenheit', 'reamur', 'kelvin'];
  var output_suhu;
  while (true) {
    var input_satuan = menu('input');
    stdout.write('input angka: ');
    var input_suhu = double.parse(stdin.readLineSync()!);
    var output_satuan = menu('output');

    if (input_satuan == output_satuan) {
      print(
          '$input_suhu derajat ${satuan[input_satuan]} = $input_suhu derajat ${satuan[input_satuan]}');
    } else {
      stdout.write('$input_suhu derajat ${satuan[input_satuan]} = ');
      if (input_satuan == 1) {
        if (output_satuan == 2) {
          output_suhu = input_suhu * 1.8 + 32;
        } else if (output_suhu == 3) {
          output_suhu = input_suhu * 0.8;
        } else {
          output_suhu = input_suhu + 273;
        }
      } else if (input_satuan == 2) {
        if (output_satuan == 1) {
          output_suhu = 0.5556 * (input_suhu - 32);
        } else if (output_satuan == 3) {
          output_suhu = 0.4444 * (input_suhu - 32);
          ;
        } else {
          output_suhu = (input_suhu - 32) * 0.5556 + 273;
        }
      } else if (input_satuan == 3) {
        if (output_satuan == 1) {
          output_suhu = 1.25 * input_suhu;
        } else if (output_satuan == 2) {
          output_suhu = 2.25 * input_suhu + 32;
        } else {
          output_suhu = 1.25 * input_suhu + 273;
        }
      } else {
        if (output_satuan == 1) {
          output_suhu = input_suhu - 273;
        } else if (output_satuan == 2) {
          output_suhu = 1.25 * (input_suhu - 273);
        } else {
          output_suhu = (input_suhu - 273) * 1.8 + 32;
        }
      }
      print('$output_suhu derajat ${satuan[output_satuan]}');
    }
  }
}

int menu(String text) {
  print('=========================');
  print('1. Celcius');
  print('2. Fahrenheit');
  print('3. Reamur');
  print('4. Kelvin');
  stdout.write("pilih satuan $text:");
  var number = int.parse(stdin.readLineSync()!);

  return number;
}
