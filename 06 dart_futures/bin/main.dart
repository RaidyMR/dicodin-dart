void main() async {
  //async-await
  print('Getting your order...');
  try {
    var order = await getOrder(true);
    print('You order: $order');
  } catch (error) {
    print('Sorry. $error');
  } finally {
    print('Thank you');
  }

  // futures
  // getOrder(false).then((value) {
  //   print('You ordered: $value');
  // }).catchError((error) {
  //   print('Sorry. $error');
  // }).whenComplete(() {
  //   print('Thank you');
  // });
  // print('Getting your order...');
}

Future<String> getOrder(var isStockAvailable) {
  return Future.delayed(Duration(seconds: 3), () {
    if (isStockAvailable) {
      return 'Coffee Boba';
    } else {
      throw 'Our stock is not enough.';
    }
  });
}
