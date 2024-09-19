part of 'dash_board_bloc.dart';

// DashBoard States
abstract class DashBoardState extends Equatable {
  const DashBoardState();

  @override
  List<Object> get props => [];
}

class TabChangedState extends DashBoardState {
  final int currentIndex;

  const TabChangedState(this.currentIndex);

  @override
  List<Object> get props => [currentIndex];
}
