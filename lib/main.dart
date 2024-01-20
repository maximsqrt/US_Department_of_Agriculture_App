import 'package:flutter/material.dart';
import 'package:kalorientracker/food/food.dart';
import 'package:kalorientracker/ui/searchscreen.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

// // main.dart

import 'package:flutter/material.dart';
import 'package:kalorientracker/splashscreen.dart';

void main() {
  runApp(MyAppWithSplash());
}

class MyAppWithSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(), // Display the SplashScreen initially
    );
  }
}
