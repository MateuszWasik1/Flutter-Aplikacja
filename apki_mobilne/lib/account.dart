import 'package:flutter/material.dart';

const int itemCount = 20;

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item ${(index + 1)}'),
          leading: const Icon(Icons.percent),
          trailing: const Icon(Icons.access_alarm_outlined),
          onTap: () => debugPrint('Item ${(index + 1)}'),
        );
      },
    );
  }
}
