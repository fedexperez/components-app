import 'dart:math' as math show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _height = 100;
  double _width = 200;
  Color _color = Colors.deepOrange;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape() {
    _height = (math.Random().nextDouble() * 250) + 30;
    _width = (math.Random().nextDouble() * 250) + 30;
    _color = Color.fromARGB(
        math.Random().nextInt(200) + 50,
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255));
    _borderRadius = BorderRadius.circular(math.Random().nextDouble() * 30);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
          duration: Duration(milliseconds: 350),
          curve: Curves.easeInCubic,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeShape();
        },
        child: Icon(Icons.change_circle),
      ),
    );
  }
}
