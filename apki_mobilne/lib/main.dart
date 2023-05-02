import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text('Aplikacje Mobilne Mateusz Wąsik 13349'),
        ),
        body: const Center(
          child: SizedBox(
            child: Text("hi mom"),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_upward),
          onPressed: () => print('pressed'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
             const BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "Account"
            ),
          ]
        ),
        drawer: const Drawer(
          child: Text('yo'),
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget{
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
    );
  }
}