import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_list_app/core/colors/colors.dart';

Widget bottomNavBar(BuildContext context) {
  return BottomAppBar(
    color: customGrayColor,
    child: Wrap(
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Column(
                  children: [
                    Container(
                      child: IconButton(
                        icon: SvgPicture.asset(
                          'assets/icons/home.svg',
                          height: 30,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Text(
                      'Index',
                      textScaler: MediaQuery.textScalerOf(context).scale(17) > 4
                          ? const TextScaler.linear(1)
                          : MediaQuery.textScalerOf(context),
                      style: TextStyle(fontSize: 14, color: whiteTextColor),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 45,
                ),
                child: Column(
                  children: [
                    IconButton(
                      icon: SvgPicture.asset('assets/icons/calendar.svg',
                          height: 30),
                      onPressed: () {},
                    ),
                    Text(
                      'Calendar',
                        textScaler:   MediaQuery.textScalerOf(context).scale(17) > 4
                              ? const TextScaler.linear(1)
                              : MediaQuery.textScalerOf(context),
                      style: TextStyle(fontSize: 14, color: whiteTextColor),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Column(
                  children: [
                    IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/clock.svg',
                        height: 30,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      'Focuses',
                        textScaler:   MediaQuery.textScalerOf(context).scale(17) > 4
                              ? const TextScaler.linear(1)
                              : MediaQuery.textScalerOf(context),
                      style: TextStyle(
                        fontSize: 14,
                        color: whiteTextColor,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  children: [
                    IconButton(
                      icon:
                          SvgPicture.asset('assets/icons/user.svg', height: 30),
                      onPressed: () {},
                    ),
                    Text(
                      'Profile',
                        textScaler:   MediaQuery.textScalerOf(context).scale(17) > 4
                              ? const TextScaler.linear(1)
                              : MediaQuery.textScalerOf(context),
                      style: TextStyle(fontSize: 14, color: whiteTextColor),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
