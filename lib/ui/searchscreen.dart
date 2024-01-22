import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kalorientracker/food/food.dart';
import 'package:kalorientracker/food_nutrition/food_nutrition.dart';
import 'package:kalorientracker/fooddetailsscreen.dart';
import 'package:kalorientracker/ui/colors.dart';

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
      Uri.parse(
          'https://api.nal.usda.gov/fdc/v1/foods/list?api_key=ylflw3nN88Xb4VZhQQmmULEFgruEAo3UEhcEdXad'),
    );

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((item) {
        var foodNutrientsList = item['foodNutrients'] as List;
        item['foodNutrients'] = foodNutrientsList.map((i) {
          if (i['amount'] != null) {
            i['amount'] = (i['amount'] as num).toInt();
          }
          return FoodNutrition.fromJson(i);
        }).toList();
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
        backgroundColor: AppBarColor.color,
        title: Text('Food List', style:TextStyle(color: FontColor.color),),
      ),
      body: FutureBuilder<List<Food>>(
        future: futureFood,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Food>? data = snapshot.data;
            return ListView.builder(
              itemCount: data?.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    // Navigate Screen logic
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            FoodDetailsScreen(foodList: data!, currentIndex: index),
                      ),
                    );
                  },
                  child: Card(
                    margin: EdgeInsets.all(4),
                    color: FontColor.color,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                    child: Column(
                      children: <Widget>[
                        Text('Description: ${data![index].description}'),
                        Text('Data Type: ${data[index].dataType}'),
                        
                        // Add more details as needed
                      ],
                    ),
                  ),
                );
              },
            );
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
