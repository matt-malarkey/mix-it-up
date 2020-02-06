import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Idea with ChangeNotifier {
  String _idea = 'Pull down to refresh';

  String get idea => _idea;

  Future<String> getNewIdea() async {
    Response r = await http.get('http://itsthisforthat.com/api.php?text');
    if (r.statusCode == 200) {
      _idea = r.body;
      notifyListeners();
      return _idea;
    }
    return '';
  }
}
