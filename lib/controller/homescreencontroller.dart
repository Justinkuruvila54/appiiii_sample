// ignore_for_file: non_constant_identifier_names, avoid_print

import 'dart:convert';

import 'package:appiiii_sample/model/homescreenmode/homescreenmodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Homescreencontroller with ChangeNotifier {
  Sampleresmode resmodel = Sampleresmode();

  Future<void> fetchdata() async {
    final Url = Uri.parse("https://chroniclingamerica.loc.gov/newspapers.json");
    final response = await http.get(Url);
    if (response.statusCode == 200) {
      final decodeddata = jsonDecode(response.body);
      resmodel = Sampleresmode.fromJson(decodeddata);
    } else {
      print("fail");
    }
    notifyListeners();
  }
}
