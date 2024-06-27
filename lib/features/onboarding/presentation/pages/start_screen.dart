import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_list_app/core/colors/colors.dart';
import 'package:todo_list_app/features/onboarding/data/data_models/data_model.dart';
import 'package:todo_list_app/features/onboarding/presentation/bloc/onboarding_bloc/onboarding_bloc.dart';
import 'package:todo_list_app/features/onboarding/presentation/bloc/onboarding_bloc/onboarding_event.dart';
import 'package:todo_list_app/features/onboarding/presentation/bloc/onboarding_bloc/onboarding_state.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundThemeColor,
      body: Column(
        children: [
          const SizedBox(
            height: 316,
          ),
          // Expanded(flex: 316,child: SizedBox()),
          Center(
            child: Column(
              children: [
                Container(
                    height: 113,
                    width: 113,
                    child: SvgPicture.asset(
                      'assets/icons/todo_start_screen.svg',
                      fit: BoxFit.fill,
                    )),
                SizedBox(
                  height: 13,
                ),
                Text(
                  'UpTodo',
                  style: TextStyle(
                      color: whiteTextColor,
                      fontSize: 40,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:todo_list_app/core/colors.dart';
// import 'package:todo_list_app/features/onboarding/data/data_model.dart';
// import 'package:todo_list_app/features/onboarding/domain/entity.dart';
// import 'package:todo_list_app/features/onboarding/presentation/bloc/onboarding_bloc.dart';
// import 'package:todo_list_app/features/onboarding/presentation/bloc/onboarding_event.dart';
// import 'package:todo_list_app/features/onboarding/presentation/bloc/onboarding_state.dart';
// import 'package:todo_list_app/features/onboarding/presentation/ui/onboarding.dart';

// class StartScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return 
//     BlocProvider(
//       create: (context) => ImageBloc(imageDataList: ImageDataList())..add(StartScreenEvent(  totalImages: 3),),
//       child: 
//       BlocBuilder<ImageBloc, OnboardingState>(
//         builder: (context, state) {
//           final imageBloc  = BlocProvider.of<ImageBloc>(context);
//           if (state is OnboardingLoadingState) {
//             return Scaffold(
//               backgroundColor: backgroundThemeColor,
//               body: Column(
//                 children: [
//                   const SizedBox(
//                     height: 316,
//                   ),
//                   // Expanded(flex: 316,child: SizedBox()),
//                   Center(
//                     child: Column(
//                       children: [
//                         Container(
//                             height: 113,
//                             width: 113,
//                             child: SvgPicture.asset(
//                               'assets/icons/todo_start_screen.svg',
//                               fit: BoxFit.fill,
//                             )),
//                         SizedBox(
//                           height: 13,
//                         ),
//                         Text(
//                           'UpTodo',
//                           style: TextStyle(
//                               color: whiteTextColor,
//                               fontSize: 40,
//                               fontWeight: FontWeight.w700),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           } 
//           else if (state is DataSuccessState) {
//           // final successState = state as DataSuccessState;
//           final List<CarouselItem> images = state.imageList;

          
//           return OnboardingScreen(imageBloc: imageBloc, images: images,);
//           }
          
//           else {
//             return const SizedBox();
//           }
//         },
//       ),
//     );
//   }
// }



