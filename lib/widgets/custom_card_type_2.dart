import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key, required this.imageUrl, this.name});

  final String imageUrl;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      child: Column(
        children: [
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.all(12),
              child: Text(name ?? 'No title'),
            ),
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/images/image-loading.gif'),
            fadeInDuration: const Duration(seconds: 2),
            width: double.infinity,
            height: 200,
          ),
          // Image.network(
          //   'https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg',
          //   width: double.infinity,
          //   height: 200,
          //   fit: BoxFit.cover,
          // ),
        ],
      ),
    );
  }
}
