import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item ${(index + 1)}'),
          leading: const Icon(Icons.push_pin),
          trailing: const Icon(Icons.account_balance),
          onTap: () => debugPrint('Item ${(index + 1)}'),
        );
      },
    );
  }
}
