import 'package:polymer/polymer.dart';

@CustomTag('click-counter')
class ClickCounter extends PolymerElement with ChangeNotifierMixin {
  int __$count = 0;
  int get count => __$count;
  set count(int value) {
    __$count = notifyPropertyChange(const Symbol('count'), __$count, value);
  }
  

  void increment() {
    count++;
  }
}

