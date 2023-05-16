import 'package:apki_mobilne/account.dart';
import 'package:apki_mobilne/search.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    SearchPage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text('Aplikacje Mobilne Mateusz Wąsik 13349'),
        ),
        body: pages[currentPage],
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_upward),
          onPressed: () => print('pressed'),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.screen_search_desktop_rounded),
              label: "Search",
            ),
            NavigationDestination(
              icon: Icon(Icons.account_circle),
              label: "Account"
            ),
          ],
          onDestinationSelected: (int index){
            setState(() {
              currentPage = index;              
            });
          },
          selectedIndex: currentPage,
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