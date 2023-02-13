part of 'home_bloc_bloc.dart';

@immutable
abstract class HomeBlocState {}

class HomeBlocInitial extends HomeBlocState {}

class CurrentActiv extends HomeBlocState {
  int activ;
  CurrentActiv(this.activ);
}
