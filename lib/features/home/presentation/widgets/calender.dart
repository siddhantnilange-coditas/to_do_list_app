import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

import 'package:table_calendar/table_calendar.dart';
import 'package:todo_list_app/core/colors/colors.dart';

class DailyCalender extends StatelessWidget {
  const DailyCalender({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
        String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

    String customTitleTextFormatter(DateTime date, dynamic locale) {
      String formattedDate = DateFormat.yMMMM(locale).format(date);
      return formattedDate.split(' ').map((word) => capitalize(word)).join(' ');
    }
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TableCalendar(
          //     weekendDayBuilder: (context, day, events) {
          //   return Center(
          //     child: Container(
          //       color: day.weekday == DateTime.sunday ? Colors.red[300] : Colors.orange[300],
          //       width: 40.0,
          //       height: 40.0,
          //       child: Center(
          //         child: Text('${day.day}'),
          //       ),
          //     ),
          //   );
          // },
          headerVisible: true,

          daysOfWeekStyle: DaysOfWeekStyle(
              weekendStyle: TextStyle(color: Colors.red),
              weekdayStyle: TextStyle(color: whiteTextColor)),
          calendarBuilders: CalendarBuilders(
            dowBuilder: (context, day) {
              final textColor = (day.weekday == DateTime.saturday ||
                      day.weekday == DateTime.sunday)
                  ? Colors.red
                  : whiteTextColor;

              return Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Divider(
                      thickness: 1,
                      height: 1,
                    ),

                    Expanded(
                      child: Center(
                        child: Text(
                          
                          DateFormat.E()
                              .format(day)
                              .toUpperCase(),
                                textScaler:
                          MediaQuery.textScalerOf(context).scale(17) > 1
                              ? const TextScaler.linear(1)
                              : MediaQuery.textScalerOf(context), //capitalize the weekdays
                          style: TextStyle(
                              fontSize: 12,
                              color: textColor), // Adjusted text color
                        ),
                      ),
                    ),
                    //  const SizedBox(
                    //    height: 4,
                    //  ),
                  ],
                ),
              );
            },
            weekNumberBuilder: (context, weekNumber) {
              Colors.red[300];
            },
          ),
          calendarStyle: CalendarStyle(
            outsideDaysVisible: true,
            cellAlignment: Alignment.center,
            defaultDecoration: BoxDecoration(
              color: calendarTileBlack,
              borderRadius: BorderRadius.circular(8),
            ),
            // cellMargin: const EdgeInsets.symmetric(horizontal: 1.5, vertical: 1.5),
            weekendDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: calendarTileBlack,
            ),

            defaultTextStyle: TextStyle(
                color: whiteTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w700),
            todayTextStyle: TextStyle(
                color: whiteTextColor,
                fontSize: 12,
                fontWeight: FontWeight.w700),
            todayDecoration: BoxDecoration(
              color: buttonsColorPurple,
              borderRadius: BorderRadius.circular(8),
            ),
            holidayDecoration: const BoxDecoration(
                // color: whiteTextColor,
                ),
            holidayTextStyle: TextStyle(
              color: whiteTextColor,
            ),
            cellMargin: EdgeInsets.symmetric(vertical: 11, horizontal: 11),

            weekendTextStyle: TextStyle(
                color: whiteTextColor,
                fontSize: 12,
                
                fontWeight: FontWeight.w700),
            weekNumberTextStyle: TextStyle(color: whiteTextColor),
          ),

          headerStyle: HeaderStyle(
              headerMargin: EdgeInsets.all(0),
              headerPadding: EdgeInsets.all(2),
              // titleTextFormatter: (date, locale) {

              // },
              // decoration: BoxDecoration(
              // //     shape: BoxShape.rectangle,

              // //     border: Border(
              // //         bottom: BorderSide(
              // //   color: dividerColor,
              // //   width: 1,
              // // ))
              // ),
              leftChevronIcon: Icon(Icons.chevron_left, color: Colors.black),
              rightChevronIcon: Icon(Icons.chevron_right, color: Colors.black),
              titleTextStyle: TextStyle(
                fontSize: 19,
                color: whiteTextColor,
              ),
              formatButtonVisible: false,
              titleCentered: true),
          focusedDay: today,
          firstDay: DateTime.utc(2010, 10, 5),
          lastDay: DateTime.utc(2030, 10, 5),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              //  padding:  EdgeInsets.only(left: 24, right: 24, top: 12, bottom: 12),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel',  textScaler:
                          MediaQuery.textScalerOf(context).scale(17) > 2
                              ? const TextScaler.linear(1)
                              : MediaQuery.textScalerOf(context),),
              ),
            ),
            SizedBox(
              width: 4,
            ),
            ElevatedButton(
              onPressed: () {
                // print('Button pressed');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonsColorPurple,
                padding:
                    EdgeInsets.only(left: 30, right: 30, top: 14, bottom: 14),

                // padding: EdgeInsets.fromLTRB(60, 12, 60, 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Text(
                'Choose Time',
                  textScaler:
                          MediaQuery.textScalerOf(context).scale(17) > 2
                              ? const TextScaler.linear(1)
                              : MediaQuery.textScalerOf(context),
                style: TextStyle(fontSize: 16, color: whiteTextColor),
              ),
            ),
          ],
        )
      ],
    );
  }
}

// Scaffold(
      //   body: Stack(
      //     children: [
      //       Container(
      //         padding: const EdgeInsets.only(left: 20, right: 20),
      //         child: Column(
      //           children: [
      //             SizedBox(
      //               height: 50,
      //             ),
      //             Row(
      //               children: [
      //                 Icon(
      //                   Icons.arrow_back_rounded,
      //                   size: 25.0,
      //                   // color: defaultTehemColor,
      //                 ),
      //                 SizedBox(
      //                   width: 16,
      //                 ),
      //                 Text(
      //                   'Calender',
      //                   style: TextStyle(
      //                       fontSize: 30,
      //                       fontWeight: FontWeight.w700,
      //                       // color: defaultTehemColor,
      //                       ),
      //                 ),
      //                 Spacer(),
      //                 Container(
      //                   child: SvgPicture.asset('assets/icons/share.svg')),
      //               ],
      //             ),
      //             Container(
      //               // width: double.infinity,
      //               // height: 800,
      //               child:  TableCalendar(

      //                   calendarStyle: CalendarStyle(
      //                     cellAlignment: Alignment.topLeft,
      //                     defaultDecoration: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(5),
      //                       border: Border.all(width: 1, color: Colors.black.withOpacity(0.1),)

      //                     ),
      //                     cellMargin: const EdgeInsets.symmetric(horizontal: 1.5, vertical: 1.5),
      //                     weekendDecoration: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(5),
      //                      border: Border.all(width: 1, color: Colors.black.withOpacity(0.1),)
      //                     ),
      //                     defaultTextStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      //                     cellPadding: const EdgeInsets.only(left: 5, right: 0, top: 3),
      //                     todayTextStyle: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
      //                     todayDecoration: BoxDecoration(borderRadius: BorderRadius.circular(4),border: Border.all(width: 1.5,
      //                     // color: defaultTehemColor,
      //                     )),
      //                     holidayDecoration: const BoxDecoration(color: Colors.black,),
      //                     holidayTextStyle:  const TextStyle(color: Colors.black,),
      //                     weekendTextStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      //                     weekNumberTextStyle: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),

      //         outsideDaysVisible: false,
      //       ),

      //                 headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true),
      //                 focusedDay: today,
      //                 firstDay: DateTime.utc(2010, 10, 5),
      //                 lastDay: DateTime.utc(2030, 10, 5),
      //             ),
      //             ),
      //           ],
      //         ),
      //       ),
      //             Positioned(
      //     bottom: -10,
      //     right: -10,
      //     child: InkWell(
      //       onTap: (){},
      //       child: Container(
      //         height: 100,
      //         width: 100,
      //         decoration: BoxDecoration(
      //           color: Colors.green,
      //           borderRadius: BorderRadius.only(topLeft: Radius.circular(80))
      //         ),
      //         child: Center(child: Text('+', style: TextStyle(fontSize: 50, color: Colors.white),)),
      //       ),
      //     ),

      //    ),

      //     ],
      //   ),