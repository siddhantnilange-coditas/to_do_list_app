import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list_app/core/colors/colors.dart';
import 'package:todo_list_app/core/widgets/app_barr.dart';
import 'package:todo_list_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:todo_list_app/features/home/presentation/bloc/home_event.dart';
import 'package:todo_list_app/features/home/presentation/bloc/home_state.dart';
import 'package:todo_list_app/features/home/presentation/pages/add_task_bottom_sheet.dart';
import 'package:todo_list_app/features/home/presentation/widgets/bottom_nav_bar.dart';
import 'package:todo_list_app/features/home/presentation/pages/check_list_screen.dart';

import '../../data/datasources/entity.dart';

class HomeScreen extends StatelessWidget {
  void _showModal(BuildContext context) {
     showModalBottomSheet(
      backgroundColor: customBalackColor,
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      builder: (context) => AddTaskBottomSheet(),
    ).whenComplete(() {
      BlocProvider.of<HomeBloc>(context).add(CloseAddTaskSheetEvent());
    });
//  showModalBottomSheet(
//               backgroundColor: customBalackColor,
//               context: context,
//               isScrollControlled: true,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(10),
//                   topRight: Radius.circular(10),
//                 ),
//               ),
//               builder: (context) => AddTaskBottomSheet(),
//             );
}

//  Widget showSheet(BuildContext context){
//        return showModalBottomSheet(
//                 backgroundColor: customBalackColor,
//                 context: context,
//                 isScrollControlled: true,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(10),
//                         topRight: Radius.circular(10))),
//                 builder: (context) => AddTaskBottomSheet(),
//               );

//   @override
//  Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundThemeColor,
//       appBar: CustomAppBar(),
//       body: BlocListener<HomeBloc, HomeState>(
//         listener: (context, state) {
//           if (state is OpenAddTaskSheetState) {
//             // showModalBottomSheet(
//             //   backgroundColor: customBalackColor,
//             //   context: context,
//             //   isScrollControlled: true,
//             //   shape: RoundedRectangleBorder(
//             //     borderRadius: BorderRadius.only(
//             //       topLeft: Radius.circular(10),
//             //       topRight: Radius.circular(10),
//             //     ),
//             //   ),
//             //   builder: (context) => AddTaskBottomSheet(),
//             // );
//             _showModal(context);
//           }
//         },
//         child: BlocBuilder<HomeBloc, HomeState>(
//           builder: (context, state) {
//             if (state is CheckListOpenState) {
//               return CheckListScreen();
//             }
//             else{
//             return Container(color: Colors.red,child: Text('dfdgfgfdg'),); 
//             }// Default case
//           },
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: Container(
//         height: 80.0,
//         child: FittedBox(
//           child: FloatingActionButton(
//             shape: CircleBorder(),
//             backgroundColor: Color(0xFF8687E7),
//             onPressed: () {
//               BlocProvider.of<HomeBloc>(context).add(OpenAddTaskSheetEvent());
//             },
//             child: Icon(
//               Icons.add,
//               size: 30,
//             ),
//             elevation: 2.0,
//           ),
//         ),
//       ),
//       bottomNavigationBar: bottomNavBar(),
//     );
//   }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundThemeColor,
      appBar: CustomAppBar(),
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state is OpenAddTaskSheetState) {
          _showModal(context);
          }
        },
        builder: (context, state) {
          if (state is CheckListOpenState) {
            return CheckListScreen();
          }
          return Container(); // Default case, should not reach here
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 80.0,
        child: FittedBox(
          child: FloatingActionButton(
            shape: CircleBorder(),
            backgroundColor: Color(0xFF8687E7),
            onPressed: () {
              BlocProvider.of<HomeBloc>(context).add(OpenAddTaskSheetEvent());
            },
            child: Icon(
              Icons.add,
              size: 30,
            ),
            elevation: 2.0,
          ),
        ),
      ),
      bottomNavigationBar: bottomNavBar(context),
    );
  }
}
