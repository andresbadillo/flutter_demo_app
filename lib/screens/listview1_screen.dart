import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'The Witcher',
    'Assasins Creed',
    'Gears of War',
    'Call of Duty'
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'ListView Tipo 1',
        )),
      ),
      body: ListView(
        children: [
          ...options
              .map((game) => ListTile(
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
