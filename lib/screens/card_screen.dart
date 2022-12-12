import 'package:flutter/material.dart';

import 'package:components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cards'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(05),
          children: const [
            CustomCardType1(),
            CustomCardType2(
              name: 'Flutter & Dart',
              imageUrl:
                  'https://miro.medium.com/max/2000/1*v61-QL8UkB1OGUdBpFCQqQ.png',
            ),
            CustomCardType2(
              imageUrl: 'https://miro.medium.com/max/1112/0*zUtZYiJ1bDTugOYY',
            ),
          ],
        ));
  }
}
