

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_app/features/home/presentation/bloc/home_event.dart';
import 'package:todo_list_app/features/home/presentation/bloc/home_state.dart';


class HomeBloc extends Bloc<HomeEvent, HomeState>{
  // final UserRepository userRepository;
  // late List<User> userList;
  // final UserDataList userDataList;

 HomeBloc() : super((CheckListOpenState())){

        on<OpenAddTaskSheetEvent>(openAddTaskSheetEvent);
        on<OpenPrioritySheetEvent>(openPrioritySheetEvent);

        on<OpenCalendarTimerSheetEvent>(openCalendarTimerSheetEvent);
        on<CategoryDialogOpenEvent>(categoryDialogOpenEvent);
                on<CloseAddTaskSheetEvent>(closeAddTaskSheetEvent);

  }


       
  FutureOr<void> openAddTaskSheetEvent(OpenAddTaskSheetEvent event, Emitter<HomeState> emit) {
    emit(OpenAddTaskSheetState());
  }

  FutureOr<void> openPrioritySheetEvent(OpenPrioritySheetEvent event, Emitter<HomeState> emit) {
    emit(PrioritySheetOpenState());
  }

  FutureOr<void> openCalendarTimerSheetEvent(OpenCalendarTimerSheetEvent event, Emitter<HomeState> emit) {
        emit(CalendarTimerSheetOpenState());

  }

  FutureOr<void> categoryDialogOpenEvent(CategoryDialogOpenEvent event, Emitter<HomeState> emit) {
    emit(CategoryDialogOpenState());
  }

  FutureOr<void> closeAddTaskSheetEvent(CloseAddTaskSheetEvent event, Emitter<HomeState> emit) {
    emit(CheckListOpenState());

  }
}


  

