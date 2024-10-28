import 'dart:collection';

import 'package:flutter/cupertino.dart';

class TestProvider extends ChangeNotifier {
  HashMap<String, int> _players = HashMap();

  void increaseScore(String name) {
    if (_players[name] == null) _players[name] = 0;
    _players[name] = (_players[name]! + 1);
  }
}