// // calorieclass.dart
// import 'dart:convert';

// import 'package:kalorientracker/api.dart';

// class CalorieInfo {
//   final String description;
//   final String brandName;
//   final String ingredients;

//   ///define Construktor
//   CalorieInfo({
//     required this.description,
//     required this.brandName,
//     required this.ingredients,
//   });

// //Factory Method gets called, creates a new CalorieInfo Class
//   factory CalorieInfo.fromJson(Map<String, dynamic> json) {
//     return CalorieInfo(
//       description: json['description'],
//       brandName: json['brandName'],
//       ingredients: json['ingredients'],
//     );
//   }

//   ///Method gets called, creates a new CalorieInfo and Error handling
//   static Future<CalorieInfo> searchFood(String query) async {
//     try {
//       /// static method 'searchFood' for API requests
//       final response = await Api.searchFoods(query);

//       if (response.statusCode == 200) {
//         //checks if it was sucessful -HTTP Statuscode 200

//         final Map<String, dynamic> data = json.decode(response.body);
//         final List<dynamic> foods = data['foods'];
//         //Decode the Json to get information

//         if (foods.isNotEmpty) {
//           final Map<String, dynamic> firstFood = foods[0];
//           return CalorieInfo.fromJson(firstFood);
//         } else {
//           // Handle case when no results are found
//           throw Exception('No results found for the query: $query');
//         }
//       } else {
//         // Handle API error
//         throw Exception('Error: ${response.statusCode}');
//       }
//     } catch (error) {
//       // Handle any exceptions that might occur during the API call
//       throw Exception('Error: $error');
//     }
//   }
// }
