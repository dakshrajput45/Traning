import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:training/router.dart';

void main() {
  runApp(const MyApp());
}

// Comments hata diye

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'daksh',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

class TryHome extends StatelessWidget {
  final Widget child;
  const TryHome({super.key, required this.child});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Doctors details",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.add,
            color: Colors.red,
          ),
        ],
      ),
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _calculateSelectedIndex(context),
        onTap: (index) => _onItemTapped(context, index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              IconData(0xf0d6, fontFamily: 'MaterialIcons'),
            ),
            label: 'Grid',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconData(0xe384,
                  fontFamily: 'MaterialIcons', matchTextDirection: true),
            ),
            label: 'List',
          )
        ],
      ),
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith('/list')) {
      return 1;
    }
    return 0;
  }

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/listScreen');
        break;
    }
  }
}
