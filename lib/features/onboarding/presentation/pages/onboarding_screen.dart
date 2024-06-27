import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list_app/core/colors/colors.dart';
import 'package:todo_list_app/features/home/presentation/pages/home_screen.dart';
import 'package:todo_list_app/features/onboarding/data/data_models/data_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:todo_list_app/features/onboarding/presentation/bloc/last_scr_bloc/last_screen_bloc.dart';
import 'package:todo_list_app/features/onboarding/presentation/bloc/last_scr_bloc/last_screen_event.dart';
import 'package:todo_list_app/features/onboarding/presentation/bloc/last_scr_bloc/last_screen_state.dart';

CarouselController myCarouselController = CarouselController();

class OnBoardingScreen extends StatelessWidget {
  final List<CarouselItem> introList;
  OnBoardingScreen({required this.introList});

  @override
  Widget build(BuildContext context) {
      double textScaleFactor = MediaQuery.of(context).textScaleFactor;
  if (textScaleFactor > 1.5) {
    textScaleFactor = 1.4;
  }
    // double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    final double deviceHeight = MediaQuery.of(context).size.height;
    print(introList);
    return Scaffold(
      backgroundColor: backgroundThemeColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 30, bottom: 50),
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(flex: 14, child: SizedBox()),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
                    },
                  ));
                },
                child: Text(
                  "SKIP",
                                  textScaler: TextScaler.linear(textScaleFactor),

                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color.fromRGBO(255, 255, 255, 0.44),
                  ),
                ),
              ),
              const Expanded(flex: 2, child: SizedBox()),
              CarouselSlider.builder(
                carouselController: myCarouselController,
                itemCount: introList.length,
                itemBuilder: (context, index, realIndex) {
                  BlocProvider.of<IntroLastScreenBloc>(context)
                      .add(OnLastScreenEvent(index: index));

                  return Column(
                    children: [
                      SvgPicture.asset(
                        introList[index].imagePath,
                      ),
                      Expanded(flex: 51, child: SizedBox()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _buildIndicators(0, context),
                      ),
                      Expanded(flex: 50, child: SizedBox()),
                       Container(
                              padding: EdgeInsets.only(left: 38, right: 38),
                              child: Column(
                                children: [
                                  Text(introList[index].title,
                                      textAlign: TextAlign.center,
                                      textScaler:
                                          TextScaler.linear(textScaleFactor),
                                      style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.w700,
                                          color: whiteTextColor)),
                                  // Expanded(flex: 42, child: SizedBox()),
                                  const SizedBox(
                                    height: 42,
                                  ),
                                  Text(introList[index].description,
                                      textScaler:
                                          TextScaler.linear(textScaleFactor),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          wordSpacing: 2,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: whiteTextColor)
                                          ),
                                ],
                              ),
                            ),
                      // Text(introList[index].title,
                      //     style: TextStyle(
                      //         fontSize: 32,
                      //         fontWeight: FontWeight.w400,
                      //         color: whiteTextColor)),
                      // const Expanded(
                      //   flex: 42,
                      //   child: SizedBox(),
                      // ),
                      // Text(introList[index].description,
                      //     textScaler: TextScaler.linear(textScaleFactor),
                      //     textAlign: TextAlign.center,
                      //     style: TextStyle(
                      //         wordSpacing: 2,
                      //         fontSize: 16,
                      //         fontWeight: FontWeight.w400,
                      //         color: whiteTextColor)),
                    ],
                  );
                },
                options: CarouselOptions(
                    height: deviceHeight * .6,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    scrollPhysics: const NeverScrollableScrollPhysics()),
              ),
              const Expanded(flex: 217, child: SizedBox()),
              BlocBuilder<IntroLastScreenBloc, IntroLastScreenState>(
                builder: (context, state) {
                  final newIndex = state as LastScreenState;

                  return Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          myCarouselController.previousPage();
                        },
                        child: Text(
                          "BACK",
                                          textScaler: TextScaler.linear(textScaleFactor),

                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: const Color.fromRGBO(255, 255, 255, 0.44),
                          ),
                        ),
                      ),
                      const Expanded(flex: 194, child: SizedBox()),
                      ElevatedButton(
                        onPressed: () {
                          newIndex.index == introList.length - 1
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ))
                              : myCarouselController.nextPage();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(136, 117, 255, 1),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: Text(newIndex.index == introList.length - 1
                            ? "Get Started"
                            : "Next",                 textScaler: TextScaler.linear(textScaleFactor),
),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildIndicators(int currentImageIndex, BuildContext context) {
    List<Widget> indicators = [];
    for (int i = 0; i < introList.length; i++) {
      indicators.add(
        Container(
          width: 30,
          height: 5,
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: currentImageIndex == i ? Colors.blue : Colors.grey,
          ),
        ),
      );
    }
    return indicators;
  }
}
