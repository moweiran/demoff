import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class StateTest with ChangeNotifier, DiagnosticableTreeMixin {
  int? _userId;
  String? _userName;

  int? get userId => _userId;
  String? get userName => _userName;

  setUserId(int uid) {
    _userId = uid;
    notifyListeners();
  }

  setUserName(String name) {
    _userName = name;
    notifyListeners();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('count', userId));
  }
}
