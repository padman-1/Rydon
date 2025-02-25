import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  TextTheme get getTextTheme => Theme.of(this).textTheme;
}
