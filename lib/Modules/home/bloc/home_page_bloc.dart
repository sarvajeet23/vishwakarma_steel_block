import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'home_page_event.dart';
import 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(const HomePageState.initial()) {
    on<HomePageEvent>((event, emit) async {
      if (event is FetchData) {
        emit(const HomePageState.loading());
        try {
          await Future.delayed(const Duration(seconds: 2));
          final data = [
            'Item 1',
            'Item 2',
            'Item 3',
            'Item 4',
            'Item 5',
            'Item 6',
            'Item 7'
          ];
          emit(HomePageState.loaded(data));
          log("Data loaded: $data");
        } catch (e) {
          emit(HomePageState.error(e.toString()));
        }
      }
    });
  }

  
}
