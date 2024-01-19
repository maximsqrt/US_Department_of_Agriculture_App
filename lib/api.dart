// ///API.DART

// // api.dart
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:kalorientracker/calorieclass.dart';
// import 'package:kalorientracker/food/food.dart';

// class Api {
//   static const String apiKey = 'ylflw3nN88Xb4VZhQQmmULEFgruEAo3UEhcEdXad';
//   static const String baseUrl = 'https://api.nal.usda.gov/fdc/v1';

//   static Future<List<Food>> listFoods() async {
//     final url = '$baseUrl/foods/list?api_key=$apiKey';
//     final response = await http.get(Uri.parse(url));

//     if (response.statusCode == 200) {
//       final Map<String, dynamic> data = json.decode(response.body);
//       final List<dynamic> foods = data['foods'];

//       List<Food> calorieInfoList = foods.map((food) {
//         return Food.fromJson(food);
//       }).toList();

//       return calorieInfoList;
//     } else {
//       // Handle API error
//       throw Exception('Error: ${response.statusCode}');
//     }
//   }

//   static Future<http.Response> getFoodDetails(int fdcId) async {
//     final url = '$baseUrl/food/$fdcId?api_key=$apiKey';
//     return await http.get(Uri.parse(url));
//   }

//   static Future<http.Response> searchFoods(String query) async {
//     final url = '$baseUrl/foods/search?api_key=$apiKey&query=$query';
//     return await http.get(Uri.parse(url));
//   }

//   // Other methods...
// }

// // In HTTP-Kommunikation gibt der Statuscode an,
// //  ob eine Anfrage erfolgreich war, umgeleitet wurde,
// //  einen Fehler aufweist oder andere Status darstellt.
// //   Der Statuscode 200 steht speziell für "OK" und bedeutet,
// //  dass die Anfrage erfolgreich abgeschlossen wurde.
