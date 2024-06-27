// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:todo_list_app/features/home/presentation/bloc/home_bloc.dart';
// import 'package:todo_list_app/features/onboarding/domain/entity.dart';
// import 'package:todo_list_app/features/onboarding/presentation/bloc/onboarding_bloc.dart';
// import 'package:todo_list_app/features/onboarding/presentation/bloc/onboarding_event.dart';
// import 'package:todo_list_app/features/onboarding/presentation/ui/start_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return 
      
//       // title: 'Flutter Demo',
//       // theme: ThemeData(
//       //   brightness: Brightness.dark,
//       //   // primaryColor: Colors.white 
//       // ),
//       // // home: OnboardingScreen(),
//       //   home: StartScreen(),
//       MultiBlocProvider(
//   providers: [
//     // BlocProvider<ImageBloc>(
//     //   create: (context) => ImageBloc(imageDataList: ImageDataList())..add(StartScreenEvent(  totalImages: 3),),
//     // ),
//     BlocProvider<HomeBloc>(
//       create: (BuildContext context) => HomeBloc(),
//     ),
  
//   ],
//   child: StartScreen(),
// );
      
   
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:todo_list_app/features/onboarding/presentation/bloc/last_scr_bloc/last_screen_bloc.dart';
import 'package:todo_list_app/features/onboarding/presentation/bloc/onboarding_bloc/onboarding_bloc.dart';
import 'package:todo_list_app/features/onboarding/presentation/bloc/onboarding_bloc/onboarding_event.dart';
import 'package:todo_list_app/features/onboarding/presentation/bloc/onboarding_bloc/onboarding_state.dart';
import 'package:todo_list_app/features/onboarding/presentation/pages/start_screen.dart';
import 'package:todo_list_app/features/onboarding/presentation/pages/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(),
        ),
     
        BlocProvider<IntroScreenBloc>(
          create: (context) => IntroScreenBloc()..add(InitialEvent()),
        ),

         BlocProvider<IntroLastScreenBloc>(
          create: (context) => IntroLastScreenBloc(),
        ),
      ],
      child: MaterialApp(
       home: BlocBuilder<IntroScreenBloc, IntroState>(
        builder: (context, state) {
          switch(state.runtimeType){
            
            case InitialState:
              print('before');

            return StartScreen();


            case OnBoardingScreensState:
              print('after');

            final dataList = state as OnBoardingScreensState;
            // print(dataList);
            return OnBoardingScreen(introList: dataList.introList);

            default: 
            // return SizedBox();
                        final dataList = state as OnBoardingScreensState;

            return OnBoardingScreen(introList: dataList.introList);
        }
        },
       )
      ),
    );
  }
}
