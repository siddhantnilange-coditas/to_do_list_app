import 'package:flutter/material.dart';

import 'package:todo_list_app/core/colors/colors.dart';
import 'package:todo_list_app/features/home/presentation/widgets/calender.dart';

Future<void> showCalenderSelectionDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        // titleTextStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        // titlePadding: EdgeInsets.only(top: 0, bottom: 20),
        // insetPadding: EdgeInsets.all(24),

        // actionsPadding: EdgeInsets.all(10),
        // actionsAlignment: MainAxisAlignment.end,

        // buttonPadding: EdgeInsets.all(60),
        // contentPadding: EdgeInsets.only(left: 11, right: 11, top: 0),

        // insetPadding: EdgeInsets.all(10),
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(4)),
        backgroundColor: customBalackColor,
        // title: const Column(
        //   children: [

        //   ],
        // ),

        child: Expanded(
          child: Container(
            // padding: EdgeInsets.all(10),
            // margin: EdgeInsets.all(0),
            width: 327,
            height: 390,
            child: DailyCalender(),
          ),
        ),
        // actions: [
        //   TextButton(
        //     onPressed: () {
        //       Navigator.of(context).pop();
        //     },
        //     child: Text('Cancel'),
        //   ),

        //   ElevatedButton(
        //     onPressed: () {
        //       // print('Button pressed');
        //     },
        //     style: ElevatedButton.styleFrom(
        //       backgroundColor: buttonsColorPurple,
        //       // padding: EdgeInsets.fromLTRB(60, 12, 60, 12),
        //       shape: RoundedRectangleBorder(

        //         borderRadius: BorderRadius.circular(4),
        //       ),
        //     ),
        //     child: Text(
        //       'Choose Time',
        //       style: TextStyle(fontSize: 16, color: whiteTextColor),
        //     ),
        //   ),
        //   // TextButton(
        //   //   onPressed: () {
        //   //     Navigator.of(context).pop(); // Close the dialog
        //   //   },
        //   //   child: Text('Cancel'),
        //   // ),
        // ],
      );
    },
  );
}
