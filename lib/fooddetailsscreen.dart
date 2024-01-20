import 'package:flutter/material.dart';
import 'package:kalorientracker/food/food.dart';

class FoodDetailsScreen extends StatelessWidget {
  final Food food;

  FoodDetailsScreen({required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Details'),
      ),
      body: Column(
        children: [
          Text('Description: ${food.description}'),
          Text('Data Type: ${food.dataType}'),
          // Add more details as needed
        ],
      ),
    );
  }
}