import 'package:flutter/material.dart';


class GradientColor {
  LinearGradient light = const LinearGradient(
      colors: [Colors.red, Colors.blue],
      begin: FractionalOffset(0.0, 0.0),
      end: FractionalOffset(0.5, 0.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp);

  LinearGradient dark = const LinearGradient(
      colors: [Colors.red, Colors.blue],
      begin: FractionalOffset(0.0, 0.0),
      end: FractionalOffset(0.5, 0.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp);

  LinearGradient left = const LinearGradient(
      colors: [Colors.red, Colors.blue],
      begin: FractionalOffset(0.0, 0.0),
      end: FractionalOffset(0.5, 0.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp);

  LinearGradient right = const LinearGradient(
      colors: [Colors.red, Colors.blue],
      begin: FractionalOffset(0.0, 0.0),
      end: FractionalOffset(0.5, 0.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp);

  LinearGradient top = const LinearGradient(
      colors: [Colors.red, Colors.blue],
      begin: FractionalOffset(0.0, 0.0),
      end: FractionalOffset(0.5, 0.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp);

  LinearGradient bottom = const LinearGradient(
      colors: [Colors.red, Colors.blue],
      begin: FractionalOffset(0.0, 0.0),
      end: FractionalOffset(0.5, 0.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp);
}

class IceThemeGradientColor extends GradientColor {}

class FireThemeGradientColor extends GradientColor {}
