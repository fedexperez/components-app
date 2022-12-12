import 'package:flutter/material.dart';

import 'package:components/themes/themes.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 50,
              max: 400,
              value: _sliderValue,
              activeColor: AppTheme.primary,
              onChanged: _sliderEnabled
                  ? ((value) {
                      _sliderValue = value;
                      setState(() {});
                    })
                  : null),
          Checkbox(
              value: _sliderEnabled,
              onChanged: ((value) {
                _sliderEnabled = value ?? true;
                setState(() {});
              })),
          SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              value: _sliderEnabled,
              title: const Text('Enable slider'),
              onChanged: ((value) {
                _sliderEnabled = value;
                setState(() {});
              })),
          CheckboxListTile(
              activeColor: AppTheme.primary,
              value: _sliderEnabled,
              title: const Text('Enable slider'),
              onChanged: ((value) {
                _sliderEnabled = value ?? true;
                setState(() {});
              })),
          const Text('Pepe'),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://static.wikia.nocookie.net/disney/images/7/71/Infinity_Gauntlet_IW.png/revision/latest?cb=20180427024541&path-prefix=es'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(
            height: 100,
            child: Text('SizedBox'),
          )
        ],
      ),
    );
  }
}
