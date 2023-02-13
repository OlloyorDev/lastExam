import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_bloc_event.dart';
part 'home_bloc_state.dart';

class HomeBlocBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  HomeBlocBloc() : super(HomeBlocInitial()) {
    on<IntintialHomeEvent>((event, emit) {
      emit(CurrentActiv(0));
    });
    on<ChangeActivEvent>((event, emit) {
      emit(CurrentActiv(event.activ));
    });
  }
}
