import 'package:flutter/material.dart';

import 'package:components/themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.do_disturb_on_outlined,
              color: AppTheme.primary,
            ),
            title: const Text('First'),
            subtitle: const Text(
                'The super super super super super super super super super super super super super '),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancel')),
                TextButton(onPressed: () {}, child: const Text('OK')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
