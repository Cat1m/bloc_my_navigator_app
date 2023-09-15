import 'package:flutter/material.dart';
import 'package:bloc_my_navigator_app/navigation_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Screen 3'),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<NavigationBloc>(context)
                  .add(NavigationEvent(screenIndex: 4));
            },
            child: const Text('Go to Screen 4'),
          ),
        ],
      ),
    );
  }
}
