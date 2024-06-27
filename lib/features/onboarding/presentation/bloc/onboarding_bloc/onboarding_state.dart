import 'package:todo_list_app/features/onboarding/data/data_models/data_model.dart';

abstract class IntroState {}

// class OnboardingLoadingState extends InitialState{

// }
// class NavigateToHomeScreenState extends InitialState{

// }
// class DataSuccessState extends InitialState{
//     DataSuccessState({required this.imageList});
//    final List<CarouselItem> imageList;

// }
// class SecScreenLoadedState extends InitialState{

//   final int number;
//   SecScreenLoadedState(this.number);

// }
// class OnboardingUpdateState extends InitialState {
//   final int currentIndex;
//   final String buttonText;

//   OnboardingUpdateState(this.currentIndex, this.buttonText);

// }
class InitialState extends IntroState {}

class OnBoardingScreensState extends IntroState {
  final List<CarouselItem> introList;

  OnBoardingScreensState({required this.introList});
}
