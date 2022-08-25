import 'package:flutter/material.dart';

class InheritedProvider<T> extends InheritedWidget {
  final T inheritedData;
  InheritedProvider({
    required Widget child,
    required this.inheritedData,
  }) : super(child: child);
  @override
  bool updateShouldNotify(InheritedProvider oldWidget) =>
      inheritedData != oldWidget.inheritedData;
  static T of<T>(BuildContext context) =>
      (context.dependOnInheritedWidgetOfExactType<InheritedProvider<T>>()
              as InheritedProvider<T>)
          .inheritedData;
}
