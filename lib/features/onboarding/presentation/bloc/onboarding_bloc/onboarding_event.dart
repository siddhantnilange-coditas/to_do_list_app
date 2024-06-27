import 'package:flutter/material.dart';
import 'package:todo_list_app/features/onboarding/data/data_models/data_model.dart';
@immutable

abstract class IntroEvent{}

// class StartScreenEvent extends ScreenInitialEvent{
//   final int totalImages;

//    StartScreenEvent({required this.totalImages});
// }
// class NextImageEvent extends ScreenInitialEvent {}

// class SkipEvent extends ScreenInitialEvent{

// }

// class NavigateToHomeScreenEvent extends ScreenInitialEvent{

// }
// class NextEvent extends ScreenInitialEvent{

// }
// class LoadSecscreenEvent extends ScreenInitialEvent{
//   final int number;

//   LoadSecscreenEvent(this.number);

// }
// class BackEvent extends ScreenInitialEvent{

// }
// class PreviousImageEvent extends ScreenInitialEvent {}


// class UpdateIndexEvent extends ScreenInitialEvent {
//   final int index;

//   UpdateIndexEvent(this.index);

  
// }

class OnBoardingScreensEvent extends IntroEvent{
  final List<CarouselItem> introList;

  OnBoardingScreensEvent({required this.introList});
}
class InitialEvent extends IntroEvent{

}