import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_list_app/core/colors/colors.dart';
import 'package:todo_list_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:todo_list_app/features/home/presentation/bloc/home_event.dart';
import 'package:todo_list_app/features/home/presentation/bloc/home_state.dart';
import 'package:todo_list_app/features/home/presentation/widgets/calendar_dialog.dart';
import 'package:todo_list_app/features/home/presentation/widgets/category_dialog';
import 'package:todo_list_app/features/home/presentation/widgets/priority_dialog.dart';

class AddTaskBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state is PrioritySheetOpenState) {
            showPrioritySelectionDialog(context);
          } else if (state is CalendarTimerSheetOpenState) {
            showCalenderSelectionDialog(context);
          }

          if (state is CategoryDialogOpenState) {
            showCategorySelectionDialog(context);
          }
        },
        builder: (context, state) {
          return Container(
              padding: EdgeInsets.all(24),
              width: double.infinity,
              height: 280,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Add Task',
                      style: TextStyle(
                          fontSize: 24,
                          color: whiteTextColor,
                          fontWeight: FontWeight.w700),
                    ),
                    Expanded(
                      flex: 7,
                      child: const SizedBox(
                        // height: 10,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: TextField(
                            autofocus: true,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: customTextColor),
                              ),
                              labelText: "",
                              fillColor: const Color.fromARGB(255, 18, 18, 18),
                              border: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(4.0),
                                borderSide: new BorderSide(),
                              ),
                            )),
                      ),
                    ),
                   Expanded(
                      flex: 7,
                      child: const SizedBox(
                        // height: 10,
                      ),
                    ),
                    Text(
                      'Description',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 175, 175, 175),
                          fontWeight: FontWeight.w400),
                    ),
                     Expanded(
                      flex: 15,
                      child: const SizedBox(
                        // height: 10,
                      ),
                    ), 
                    Row(
                      children: [
                        InkWell(
                          onTap: () async {
                            // showCalenderSelectionDialog(context);
                            BlocProvider.of<HomeBloc>(context)
                                .add(OpenCalendarTimerSheetEvent());
                          },

                          child: SvgPicture.asset('assets/icons/timer.svg', height: 30,),
                          // Text('Select Date and Time'),
                        ),

                        // child: SvgPicture.asset('assets/icons/timer.svg')),
                        SizedBox(
                          width: 32,
                        ),
                        InkWell(
                            onTap: () {
                              BlocProvider.of<HomeBloc>(context)
                                  .add(CategoryDialogOpenEvent());
                            },
                            child: SvgPicture.asset(
                              'assets/icons/tag.svg',
                              height: 30,
                            )),
                        SizedBox(
                          width: 32,
                        ),
                        InkWell(
                            onTap: () {
                              // showPrioritySelectionDialog(context);
                              BlocProvider.of<HomeBloc>(context)
                                  .add(OpenPrioritySheetEvent());
                            },
                            child: SvgPicture.asset('assets/icons/flag.svg',height: 30,)),
                        Spacer(),
                        InkWell(
                            onTap: () {},
                            child: SvgPicture.asset('assets/icons/send.svg', height: 30,)),
                      ],
                    )
                  ]));
        },
      ),
    );
  }
}



//  DateTime? selectedDate =
//                                         await showDatePicker(
//                                       // barrierColor: whiteTextColor,
//                                       confirmText: 'Select Time',
//                                       context: context,
//                                       initialDate: DateTime.now(),
//                                       firstDate: DateTime(2020),
//                                       lastDate: DateTime(2030),
//                                       builder: (BuildContext context,
//                                           Widget? child) {
//                                         return Theme(
//                                           data: ThemeData.light().copyWith(
//                                             colorScheme: ColorScheme.light(
//                                               primary: Colors
//                                                   .blue, // Set primary color to blue
//                                             ),
//                                           ),
//                                           child: child!,
//                                         );
//                                       },
//                                     );

//                                     if (selectedDate != null) {
//                                       // Show time picker dialog to choose a time
//                                       TimeOfDay? selectedTime =
//                                           await showTimePicker(
//                                         context: context,
//                                         initialTime: TimeOfDay.now(),
//                                       );

//                                       if (selectedTime != null) {
//                                         // Combine selected date and time into a single DateTime object
//                                         DateTime selectedDateTime = DateTime(
//                                           selectedDate.year,
//                                           selectedDate.month,
//                                           selectedDate.day,
//                                           selectedTime.hour,
//                                           selectedTime.minute,
//                                         );

//                                         print(
//                                             'Selected DateTime: $selectedDateTime');
//                                       }
//                                     }