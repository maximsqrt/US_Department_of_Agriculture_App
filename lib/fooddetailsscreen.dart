import 'package:flutter/material.dart';
import 'package:kalorientracker/food/food.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:kalorientracker/food_nutrition/food_nutrition.dart';

import 'package:flutter/material.dart';
import 'package:kalorientracker/food/food.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:kalorientracker/ui/colors.dart';

class FoodDetailsScreen extends StatelessWidget {
  final List<Food> foodList;
  final int currentIndex;

  const FoodDetailsScreen({required this.foodList, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    Food selectedFood = foodList[currentIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppBarColor.color,
        title: Text('Food Details', style: TextStyle(color: FontColor.color)),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: BackgroundColor.color,
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description: ${selectedFood.description}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Data Type: ${selectedFood.dataType}',
                  style: TextStyle(fontSize: 16),
                ),
                // Add more details as needed
              ],
            ),
          ),
          Expanded(
            child: MyStaggeredGrid(
              foodNutrition: selectedFood.foodNutrients ?? [],
            ),
          ),
        ],
      ),
    );
  }
}

class MyStaggeredGrid extends StatelessWidget {
  final List<FoodNutrition> foodNutrition;

  MyStaggeredGrid({required this.foodNutrition});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        children: foodNutrition.map((nutrition) {
          return StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 2,
            child: GridTileColor.buildContainer( // Remove the argument here
              Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Number: ${nutrition.number ?? "N/A"}',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Name: ${nutrition.name ?? "N/A"}',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Amount: ${nutrition.amount ?? "N/A"}',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Unit Name: ${nutrition.unitName ?? "N/A"}',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Derivation Code: ${nutrition.derivationCode ?? "N/A"}',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Derivation Description: ${nutrition.derivationDescription ?? "N/A"}',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}


//   Widget build(BuildContext context) {
//     //foodList.length
//     return StaggeredGrid.count(
//       crossAxisCount: 3, 
//       mainAxisSpacing: 4,
//       crossAxisSpacing: 4,
//       children: [
//         StaggeredGridTile.count(crossAxisCellCount: 1, 
//         mainAxisCellCount: 3, 
//         child: Container(height: 100,
//         width: 100,
//         color: Colors.red),),
//         StaggeredGridTile.count(crossAxisCellCount: 3, 
//         mainAxisCellCount: 3, 
//         child: Container(height: 100,
//         width: 100,
//         color: Color.fromARGB(255, 23, 126, 9)),),
//         StaggeredGridTile.count(crossAxisCellCount: 1, 
//         mainAxisCellCount: 5, 
//         child: Container(height: 100,
//         width: 100,
//         color: Color.fromARGB(255, 23, 126, 9)),),
//         StaggeredGridTile.count(crossAxisCellCount: 2, 
//         mainAxisCellCount: 4, 
//         child: Container(height: 100,
//         width: 100,
//         color: Color.fromARGB(255, 23, 126, 9)),),
//       ],
//         );
      
     
    
//   }
// }
