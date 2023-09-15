import 'package:bloc_my_navigator_app/pages/screen0.dart';
import 'package:bloc_my_navigator_app/pages/screen1.dart';
import 'package:bloc_my_navigator_app/pages/screen10.dart';
import 'package:bloc_my_navigator_app/pages/screen2.dart';
import 'package:bloc_my_navigator_app/pages/screen3.dart';
import 'package:bloc_my_navigator_app/pages/screen4.dart';
import 'package:bloc_my_navigator_app/pages/screen5.dart';
import 'package:bloc_my_navigator_app/pages/screen6.dart';
import 'package:bloc_my_navigator_app/pages/screen7.dart';
import 'package:bloc_my_navigator_app/pages/screen8.dart';
import 'package:bloc_my_navigator_app/pages/screen9.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:bloc_my_navigator_app/navigation_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => NavigationBloc(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<NavigationBloc, int>(
        builder: (context, state) {
          print('state: $state');
          if (state == 10) {
            return const Screen10();
          }
          return MainScreen(currentIdex: state);
        },
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  final int currentIdex;
  const MainScreen({super.key, required this.currentIdex});

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      const Screen0(),
      const Screen1(),
      const Screen2(),
      const Screen3(),
      const Screen4(),
      const Screen5(),
      const Screen6(),
      const Screen7(),
      const Screen8(),
      const Screen9(),
      //const Screen10(),
    ];
    print('currentIdex: $currentIdex');

    int bottomBarIndex = (currentIdex < 3) ? currentIdex : 0;
    print('bottombarIndex: $bottomBarIndex');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: screens[currentIdex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomBarIndex,
        onTap: (int index) {
          context
              .read<NavigationBloc>()
              .add(NavigationEvent(screenIndex: index));
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
