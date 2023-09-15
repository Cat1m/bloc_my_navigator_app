import 'package:flutter/material.dart';
import 'package:bloc_my_navigator_app/navigation_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Screen0 extends StatelessWidget {
  const Screen0({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('screen 0'),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<NavigationBloc>(context)
                  .add(NavigationEvent(screenIndex: 3));
            },
            child: const Text('go to Screen 3'),
          ),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<NavigationBloc>(context)
                  .add(NavigationEvent(screenIndex: 9));
            },
            child: const Text(
              'Go to screen 9',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<NavigationBloc>(context)
                  .add(NavigationEvent(screenIndex: 10));
            },
            child: const Text(
              'Go to screen 10',
            ),
          ),
        ],
      ),
    );
  }
}
