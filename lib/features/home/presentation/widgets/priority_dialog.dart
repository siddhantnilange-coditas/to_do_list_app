import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_list_app/core/colors/colors.dart';
import 'package:todo_list_app/features/home/data/datasources/model.dart';
import 'package:todo_list_app/features/home/data/datasources/entity.dart';
import 'package:todo_list_app/features/home/presentation/widgets/calender.dart';

Future<void> showPrioritySelectionDialog(BuildContext context) async {
  double textScaleFactor = MediaQuery.of(context).textScaleFactor;
  if (textScaleFactor > 1.5) {
    textScaleFactor = 1.6;
  }
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        titleTextStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        titlePadding: EdgeInsets.only(top: 5, bottom: 20),
        insetPadding: EdgeInsets.all(1),
        contentPadding: EdgeInsets.only(left: 14, right: 14, bottom: 15),
        actionsPadding: EdgeInsets.all(10),
        actionsAlignment: MainAxisAlignment.end,

//  actionsOverflowDirection,
//  actionsOverflowButtonSpacing,
        buttonPadding: EdgeInsets.all(60),
        // contentPadding: EdgeInsets.only(left: 11, right: 11, top: 0),∏

        // insetPadding: EdgeInsets.all(10),
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(4)),
        backgroundColor: customBalackColor,
        title: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Text(
                'Task Priority',
                textScaler: TextScaler.linear(textScaleFactor),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
            Divider(
              indent: 10,
              endIndent: 10.0,
              color: Colors.white,
              height: 1,
            ),
          ],
        ),

        content: Container(
          // padding: EdgeInsets.all(0),
          // margin: EdgeInsets.all(0),
          width: 350,
          height: 270,
          child: GridView.count(
            // shrinkWrap: true,
            padding: EdgeInsets.all(0),

            crossAxisCount: 4,
            mainAxisSpacing: 18,
            crossAxisSpacing: 16,
            children: List.generate(
              10,
              (index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: backgroundThemeColor,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      width: .8,
                    ),
                  ),
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  height: 64,
                  width: 64,
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset('assets/icons/flag.svg'),
                      Text(
                        (index + 1).toString(),
                        textScaler: TextScaler.linear(textScaleFactor),
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: whiteTextColor),
                      ),
                    ],
                  )),
                ),
              ),
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'Cancel',
              textScaler: TextScaler.linear(textScaleFactor + .3),
            ),
          ),

          ElevatedButton(
            onPressed: () {
              // print('Button pressed');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonsColorPurple,
              padding: EdgeInsets.fromLTRB(60, 12, 60, 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4), // No border radius
              ), // Set custom padding
            ),
            child: Text(
              'Save',
              textScaler: TextScaler.linear(textScaleFactor),
              style: TextStyle(fontSize: 16, color: whiteTextColor),
            ),
          ),
          // TextButton(
          //   onPressed: () {
          //     Navigator.of(context).pop(); // Close the dialog
          //   },
          //   child: Text('Cancel'),
          // ),
        ],
      );
    },
  );
}
