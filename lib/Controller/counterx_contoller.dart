import 'package:get/get.dart';

class CounterController extends GetxController {
  var c = 0;
  Increment() {
    c++;
    update();
  }
}
