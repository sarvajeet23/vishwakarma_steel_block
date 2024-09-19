part of 'dash_board_bloc.dart';

// DashBoard Events
abstract class DashBoardEvent extends Equatable {
  const DashBoardEvent();

  @override
  List<Object> get props => [];
}

class ChangeTabEvent extends DashBoardEvent {
  final int newIndex;

  const ChangeTabEvent(this.newIndex);

  @override
  List<Object> get props => [newIndex];
}
