import '../form.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

Future<List<TestForm>> getFeedbackList() async {
  return await http.get(URL).then((response) {
    var jsonFeedback = convert.jsonDecode(response.body) as List;
    return jsonFeedback.map((json) => TestForm.fromJson(json)).toList();
  });
}
