import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'dash_board_event.dart';
part 'dash_board_state.dart';

class DashBoardBloc extends Bloc<DashBoardEvent, DashBoardState> {
  DashBoardBloc() : super(const TabChangedState(0)) {
    on<ChangeTabEvent>((event, emit) {
      emit(TabChangedState(event.newIndex));
    });
  }
}
