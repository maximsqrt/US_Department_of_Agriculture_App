import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kalorientracker/ui/colors.dart';
import 'package:kalorientracker/ui/searchscreen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppBarColor.color,
        title: Text('Animated Screen', style: TextStyle(color:FontColor.color)),
      ),
      body: FutureBuilder(
        // Simulating an asynchronous operation (e.g., loading an animation)
        future: _loadAnimation(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Display a loading indicator while waiting for the animation to load
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            // Handle error case
            return Center(
              child: Text('Error loading animation'),
            );
          } else {
            // Animation loaded successfully, display it with a 3-second duration
            return _buildAnimatedWidget(context, snapshot.data as Widget);
          }
        },
      ),
    );
  }

  Future<Widget> _loadAnimation() async {
    // Load your animation asynchronously
    return Lottie.asset('assets/splashanimation.json');
  }

  Widget _buildAnimatedWidget(BuildContext context, animation) {

    Future.delayed(Duration(seconds: 3), (){
      //Navigate to mainapp after 2 sec
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyApp()),
      );
    });

    return Center(
     child: Container(
       
        width: 400,
        height: 400,
        child: animation,
      ),
    );
  }
}

//INKWELL einbauen