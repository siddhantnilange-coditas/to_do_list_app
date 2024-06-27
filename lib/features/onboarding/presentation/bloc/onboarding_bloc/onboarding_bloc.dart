
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo_list_app/features/onboarding/data/datasources/entity.dart';
import 'package:todo_list_app/features/onboarding/presentation/bloc/onboarding_bloc/onboarding_event.dart';
import 'package:todo_list_app/features/onboarding/presentation/bloc/onboarding_bloc/onboarding_state.dart';

class IntroScreenBloc extends Bloc<IntroEvent, IntroState> {
  IntroScreenBloc() : super(InitialState()) {
    on<InitialEvent>(initialEvent);
    on<OnBoardingScreensEvent>(onBoardingScreensEvent);
  }

  ImageDataList imageDataList = ImageDataList();

  FutureOr<void> initialEvent(
      InitialEvent event, Emitter<IntroState> emit) async {
    print(11);
    emit(InitialState());
    print(2);
    
    final introList = imageDataList.fetchImageData();

    await Future.delayed(
      const Duration(seconds: 1),
    );
    print(3);

    // for (var item in introList) {
    //   print(item.imagePath);
    // }

    emit(OnBoardingScreensState(introList: introList));
    print(4);
  }

  FutureOr<void> onBoardingScreensEvent(
      OnBoardingScreensEvent event, Emitter<IntroState> emit) {
    emit(OnBoardingScreensState(introList: imageDataList.fetchImageData()));
  }
}
