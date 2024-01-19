import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kalorientracker/food/food.dart';
import 'package:kalorientracker/food_nutrition/food_nutrition.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<Food>> futureFood;

  @override
  void initState() {
    super.initState();
    futureFood = fetchFoodData();
  }

Future<List<Food>> fetchFoodData() async {
  final response = await http.get(
    Uri.parse('https://api.nal.usda.gov/fdc/v1/foods/list?api_key=ylflw3nN88Xb4VZhQQmmULEFgruEAo3UEhcEdXad'),
  );

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((item) {
      // Convert the 'foodNutrients' field to a List<dynamic>
      var foodNutrientsList = item['foodNutrients'] as List;
      // Replace the 'foodNutrients' field in the item with a List<FoodNutrition>
      item['foodNutrients'] = foodNutrientsList.map((i) {
        // Convert 'amount' to int before creating the FoodNutrition object
        if (i['amount'] != null) {
          i['amount'] = (i['amount'] as num).toInt();
        }
        return FoodNutrition.fromJson(i);
      }).toList();
      // Now create the Food object
      return Food.fromJson(item);
    }).toList();
  } else {
    throw Exception('Failed to load food data');
  }
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food List'),
      ),
      body: FutureBuilder<List<Food>>(
        future: futureFood,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Food>? data = snapshot.data;
            return ListView.builder(
                itemCount: data?.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Column(
                      children: <Widget>[
                        Text('Description: ${data![index].description}'),
                        Text('Data Type: ${data[index].dataType}'),
                        // Add more details as needed
                      ],
                    ),
                  );
                });
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          // By default show a loading spinner.
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
