import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:todo_list_app/features/onboarding/presentation/bloc/last_scr_bloc/last_screen_event.dart';
import 'package:todo_list_app/features/onboarding/presentation/bloc/last_scr_bloc/last_screen_state.dart';



class IntroLastScreenBloc extends Bloc<IntroLastScreenEvent, IntroLastScreenState> {
  IntroLastScreenBloc() : super(LastScreenState(index: 0)) {

   on<OnLastScreenEvent>(onLastScreenEvent);

  }

  FutureOr<void> onLastScreenEvent(OnLastScreenEvent event, Emitter<IntroLastScreenState> emit) {
    emit(LastScreenState(index: event.index));
  }
}