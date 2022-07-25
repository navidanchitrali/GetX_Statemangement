import 'package:get/get.dart';

class Controller extends GetxController {
  var counter = 0;
  increment() {
    counter++;
    update();
  }
}
