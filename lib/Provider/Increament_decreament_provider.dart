import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class NumberChange extends ChangeNotifier {
  int number = 0;
  int get getNum => number;

  void increament() {
    number++;
    notifyListeners();
  }

  void decreament() {
    number-- <= 0 ? number = 0 : number--;
    notifyListeners();
  }
}
