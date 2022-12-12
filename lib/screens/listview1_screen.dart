import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

  final options = const ['Megaman', 'Pepe', 'Sonic'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listiview1'),
      ),
      body: ListView(
        children: [
          //... se usa para extraer cada uno de los elementos de la lista y mostrar el widget
          ...options.map(
            (heroCharacter) => ListTile(
              title: Text(heroCharacter),
              trailing: const Icon(Icons.arrow_forward),
            ),
          ),
          // ListTile(
          //   title: Text('Title of ListTile'),
          // ),
        ],
      ),
    );
  }
}
