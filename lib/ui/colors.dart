import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class NeumorphicColor {
  static Neumorphic buildNeumorphicContainer({
    required Color color,
  }) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        depth: 8,
        lightSource: LightSource.topLeft,
        color: color,
      ),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          // Your column content
        ),
      ),
    );
  }
}




class BackgroundColor {
  static const Color color = Color(0xFF145DA0); // Midnight Blue
  static NeumorphicStyle neumorphicStyle = NeumorphicStyle(
    shape: NeumorphicShape.concave,
    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
    depth: 8,
    lightSource: LightSource.topLeft,
    color: color,
  );
  static Neumorphic buildContainer() {
    return NeumorphicColor.buildNeumorphicContainer(color: color);
  }
}

class AppBarColor {
  static const Color color = Color(0xFF0C2D48); // Dark Blue
  static NeumorphicStyle neumorphicStyle = NeumorphicStyle(
    shape: NeumorphicShape.concave,
    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
    depth: 8,
    lightSource: LightSource.topLeft,
    color: color,
  );
  static Neumorphic buildContainer() {
    return NeumorphicColor.buildNeumorphicContainer(color: color);
  }
}

class FontColor {
  static const Color color = Color(0xFF2E8BC0); // Blue
  static NeumorphicStyle neumorphicStyle = NeumorphicStyle(
    shape: NeumorphicShape.concave,
    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
    depth: 8,
    lightSource: LightSource.topLeft,
    color: color,
  );
  static Neumorphic buildContainer() {
    return NeumorphicColor.buildNeumorphicContainer(color: color);
}
}
class TitleColor {
  static const Color color = Color(0xFFB1D4E0); // Baby Blue
  static NeumorphicStyle neumorphicStyle = NeumorphicStyle(
    shape: NeumorphicShape.concave,
    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
    depth: 8,
    lightSource: LightSource.topLeft,
    color: color,
  );
  static Neumorphic buildContainer() {
    return NeumorphicColor.buildNeumorphicContainer(color: color);
}
}
class GridTileColor {
  static const Color color = Color(0xFF145DA0); // Midnight Blue
  static NeumorphicStyle neumorphicStyle = NeumorphicStyle(
    shape: NeumorphicShape.concave,
    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(1)),
    depth: 2,
    lightSource: LightSource.topLeft,
    color: color,
  );
  static Neumorphic buildContainer(Widget child) {
    return Neumorphic(
      style: neumorphicStyle,
      child: child,
    );
  }
}