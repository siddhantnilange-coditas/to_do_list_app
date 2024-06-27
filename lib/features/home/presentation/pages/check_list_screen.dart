import 'dart:math';

import 'package:flutter/material.dart';
import 'package:todo_list_app/core/colors/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_list_app/core/colors/colors.dart';

class CheckListScreen extends StatelessWidget {
  String dropdownvalue = 'Today';

  // List of items in our dropdown menu
  var items = [
    'Today',
    'Week',
    'Month',
    '6 Moths',
    '1 Year',
  ];
  @override
  Widget build(BuildContext context) {
        double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    Size screenSize = MediaQuery.of(context).size;
  if (textScaleFactor > 1.5) {
      textScaleFactor = 1.4;
    }
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          Container(
            height: 55,
            width: double.infinity,
            child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 12, right: 12),
                    child: SvgPicture.asset(
                      'assets/icons/search-normal.svg',
                    ),
                  ),

                  prefixIconConstraints: BoxConstraints.tight(Size(52, 52)),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: customTextColor),
                  ),
                  // labelText: "",
                  hintText: 'Search for your task...' ,

                  hintStyle: TextStyle(
                      color: customTextColor,
                      fontSize: 19,
                      fontWeight: FontWeight.w400),
                  fillColor: customTextFieldColor,
                  filled: true,

                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(4.0),
                    borderSide: new BorderSide(),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15,
                  ), // Add padding inside TextField
                )),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
            width: 110,
            // height: 50,
            child: DropdownButtonFormField<String>(
              value: dropdownvalue,
              iconSize: 0,
              decoration: InputDecoration(
                filled: true,
                fillColor: customBalackColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    // color: Colors.deepPurpleAccent,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    // color: Colors.deepPurple,
                    width: 2,
                  ),
                ),
              ),
              dropdownColor: Colors.black,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
                size: 30,
              ),
              onChanged: (String? newValue) {},
              items: items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // final category = 'electornics';
                  },
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 18),
                    child: Container(
                      // height: 80,
                      // width: 327,
                      // padding: const EdgeInsets.all(15),
                      // margin: const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: customGrayColor,
                      ),
                      child: Stack(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.only(
                              right: 0,
                              top: 0,
                              left: 10,
                            ),
                            // contentPadding: EdgeInsets.all(8.0),
                            title: Padding(
                              padding: const EdgeInsets.only(
                                bottom: 4,
                                top: 2,
                              ),
                              child: Flexible(
                                child: Text(
                                  'Do Math Homework',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: whiteTextColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 19),
                                ),
                              ),
                            ),
                            leading: Icon(
                              Icons.circle_outlined,
                              color: whiteTextColor,
                            ),

                            subtitle: Padding(
                              padding: const EdgeInsets.only(bottom: 0),
                              child: Text(
                                'Today at 16:45',
                                textScaler:
                                    MediaQuery.textScalerOf(context).scale(17) >
                                            4
                                        ? const TextScaler.linear(1)
                                        : MediaQuery.textScalerOf(context),
                                style: TextStyle(
                                    color: customTextColor, fontSize: 16),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            right: 8,
                            child: Wrap(
                              spacing: 12,
                              children: <Widget>[
                                Container(
                                  padding:
                                      EdgeInsets.only(right: 10, bottom: 4),
                                  width: 48,
                                  height: 29,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: buttonsColorPurple,
                                      // Set the border color here
                                      width: 1, // Border width
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        3), // Border radius
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 6.0,
                                          bottom: 2,
                                        ),
                                        child: SvgPicture.asset(
                                          'assets/icons/flag.svg',
                                          height: 17,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 2.0),
                                        child: Text(
                                          '1',
                                          textScaler:
                                              MediaQuery.textScalerOf(context)
                                                          .scale(17) >
                                                      2
                                                  ? const TextScaler.linear(1)
                                                  : MediaQuery.textScalerOf(
                                                      context),
                                          style: TextStyle(
                                            color: whiteTextColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: -4,
                            right: 66,
                            child: SizedBox(
                              // width: double.infinity,
                              child: ElevatedButton.icon(
                                icon: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: SvgPicture.asset(
                                    'assets/icons/flag.svg',
                                    height: 16,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(255, 240, 100, 90),

                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0,
                                      vertical: 0), // Remove default padding
                                  minimumSize: Size(48,
                                      29), // Set the minimum size of the button
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        3), // Border radius
                                  ),
                                ),
                                onPressed: () {},
                                label: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // Padding(
                                    //   padding: const EdgeInsets.only(
                                    //     left: 6.0,
                                    //     bottom: 2,
                                    //   ),
                                    //   child: SvgPicture.asset(
                                    //     'assets/icons/category.svg',
                                    //     height: 17,
                                    //   ),
                                    // ),
                                    // SizedBox(
                                    //   width: 6,
                                    // ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0, right: 10),
                                      child: Text(
                                        'Home',
                                        textScaler: MediaQuery.textScalerOf(
                                                        context)
                                                    .scale(17) >
                                                2
                                            ? const TextScaler.linear(1)
                                            : MediaQuery.textScalerOf(context),
                                        style: TextStyle(
                                          color: whiteTextColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            // ListView.separated(
            //   separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 16,),
            //   itemCount: 5,
            //   itemBuilder: (BuildContext context, int index) {
            //     return Container(
            //       height: 80
            //       ,
            //      padding: EdgeInsets.symmetric(vertical: 10),
            //         color: customBalackColor,
            //         child: ListTile(
            //           subtitle: Text('Do Math Homework', ),
            //             leading:  Icon(Icons.circle_outlined, color: whiteTextColor,),
            //             trailing: const Text(
            //               "Text",
            //               style: TextStyle(color: Colors.green, fontSize: 15),
            //             ),
            //             title: Text('Today at 16:45'),
            //         )
            //     );
            //   }
            //   ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 110,
            height: 50,
            child: DropdownButtonFormField<String>(
              value: dropdownvalue,
              iconSize: 0,
              decoration: InputDecoration(
                filled: true,
                fillColor: customBalackColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    // color: Colors.deepPurpleAccent,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    // color: Colors.deepPurple,
                    width: 2,
                  ),
                ),
              ),
              dropdownColor: Colors.black,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
                size: 30,
              ),
              onChanged: (String? newValue) {},
              items: items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // final category = 'electornics';
                  },
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: Container(
                      height: 80,
                      width: 327,
                      // padding: const EdgeInsets.all(15),
                      // margin: const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: customGrayColor,
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.only(
                          right: 0,
                          top: 0,
                          left: 10,
                        ),
                        // contentPadding: EdgeInsets.all(8.0),
                        title: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 4,
                            top: 2,
                          ),
                          child: Flexible(
                            child: Text(
                              'Do Math Homework',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: whiteTextColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 19),
                            ),
                          ),
                        ),
                        leading: Icon(
                          Icons.circle_outlined,
                          color: whiteTextColor,
                        ),

                        subtitle: Padding(
                          padding: const EdgeInsets.only(bottom: 0),
                          child: Text(
                            'Today at 16:45',
                            textScaler:
                                MediaQuery.textScalerOf(context).scale(17) > 4
                                    ? const TextScaler.linear(1)
                                    : MediaQuery.textScalerOf(context),
                            style:
                                TextStyle(color: customTextColor, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
    // Container(
    //       height: screenSize.height,
    //       child: Center(
    //         child: Column(
    //           children: [
    //             Expanded(flex: 75,child: SizedBox()),
    //             // SizedBox(
    //             //   height: 75,
    //             // ),
    //             SvgPicture.asset('assets/icons/checklist_empty.svg',),
    //             // SizedBox(
    //             //   height: 10,
    //             // ),
    //                             Expanded( flex: 10, child: SizedBox()),

    //             Text(
    //               'What do you want to do today?',
    //                                 textAlign: TextAlign.center,

    //               style: TextStyle(
    //                   color: whiteTextColor,
    //                   fontSize: 20,
    //                   fontWeight: FontWeight.w400),
    //             ),
    //             // SizedBox(
    //             //   height: 10,
    //             // ),
    //             Expanded( flex: 10, child: SizedBox()),
    //             Text(
    //               'Tap + to add your tasks',
    //               textAlign: TextAlign.center,
    //               style: TextStyle(
    //                   color: whiteTextColor,
    //                   fontSize: 16,
    //                   fontWeight: FontWeight.w400),
    //             ),
    //             // SizedBox(
    //             //   height: 213,
    //             // )
    //                             Expanded( flex: 213
    //                             , child: SizedBox()),

    //           ],
    //         ),
    //       ),
    //     );
  }
}
