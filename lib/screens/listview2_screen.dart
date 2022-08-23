import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'The Witcher',
    'Assasins Creed',
    'Gears of War',
    'Call of Duty'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView Tipo 2',
        ),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.indigo,
          ),
          onTap: () {
            final game = options[index];
            print(game);
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
