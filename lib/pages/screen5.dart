import 'package:flutter/material.dart';
import 'package:bloc_my_navigator_app/navigation_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("screen 5"),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<NavigationBloc>(context)
                  .add(NavigationEvent(screenIndex: 6));
            },
            child: const Text('Go to Screen 6'),
          ),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<NavigationBloc>(context)
                  .add(NavigationEvent(screenIndex: 3));
            },
            child: const Text('Go to Screen 3'),
          ),
        ],
      )),
    );
  }
}
