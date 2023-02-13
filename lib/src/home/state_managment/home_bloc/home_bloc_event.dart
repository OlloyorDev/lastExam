part of 'home_bloc_bloc.dart';

@immutable
abstract class HomeBlocEvent {}

class IntintialHomeEvent extends HomeBlocEvent {}

class ChangeActivEvent extends HomeBlocEvent {
  int activ;
  ChangeActivEvent(this.activ);
}
