import 'package:flutter/material.dart';
import 'home.dart';
import 'fooderlich_theme.dart';

void main() {
  runApp( Fooderlich());
}

class Fooderlich extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    // TODO: Apply home widget

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // 3
        theme: theme,
        title: 'Fooderlich',
        home: Home());
  }
}
