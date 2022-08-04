import 'dart:io';

void main() {
  // pyramid loop
  // for (int i = 0; i < 10; i++) {
  //   var line = '';
  //   for (int j = 0; j < i; j++) {
  //     line += '*';
  //   }
  //   print(line);
  // }

  // user validation loop
  String username;
  bool notValid = true;

  do {
    stdout.write('Masukkan nama Anda (min. 6 karakter): ');
    username = stdin.readLineSync() ?? "";

    if (username.length < 6) {
      print('Username Anda tidak valid');
    } else {
      notValid = false;
    }
  } while (notValid);
}
