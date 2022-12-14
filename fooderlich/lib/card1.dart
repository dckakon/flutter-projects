// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);
  final String category = 'Editor\'s Choice';
  final String title = ' The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Gordon Ramsay';

  @override
  Widget build(BuildContext context) {
    return Center(
      //TODO: card1 decorate container
      child: Container(
        padding: const EdgeInsets.all(16),
        //width: 350,
        // height: 450,
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag1.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              child: Text(
                category,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              left: 5,
            ),
            Positioned(
              child: Text(
                title,
                style: FooderlichTheme.darkTextTheme.headline2,
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                description,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                chef,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            ),
          ],
        ),
      ),
    );
  }
}
