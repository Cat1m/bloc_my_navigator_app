import 'package:flutter_bloc/flutter_bloc.dart';

// Định nghĩa NavigationEvent như một class với một trường là screenIndex
class NavigationEvent {
  final int screenIndex;
  NavigationEvent({required this.screenIndex});
}

// NavigationBloc quản lý việc chuyển đổi màn hình dựa trên NavigationEvent
class NavigationBloc extends Bloc<NavigationEvent, int> {
  NavigationBloc() : super(0) {
    on<NavigationEvent>((event, emit) {
      emit(event.screenIndex);
    });
  }
}
