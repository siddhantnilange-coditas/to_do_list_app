import 'package:flutter/material.dart';
import 'package:todo_list_app/features/home/data/datasources/model.dart';
import 'package:todo_list_app/features/onboarding/data/data_models/data_model.dart';


class TaskDataList{

 List<TaskModel> fetchTaskData(){
     return [
  TaskModel(
       title: 'Task1',
   date : DateTime.now(),
   time: TimeOfDay.now(),
   priority : 1,
   category : TaskCategory.Work,
  ),
  TaskModel(
           title: 'Task2',
   date : DateTime.now(),
   time: TimeOfDay.now(),
   priority : 1,
   category : TaskCategory.Home,
  )

  ];
 }

 
  // List<User> get users => _users;


  // void updateUser(User newUser, int index) {
  //   if(index>=0 && index<_users.length){
  //         _users[index] = newUser;
  //   }
  //   else{
  //     addUser(newUser);
  //   }

  // }

  // void addUser(newUser) {
  //   _users.add(newUser);
  // }
}
class CategoryManager {
  static final CategoryManager _instance = CategoryManager._internal();
  
  factory CategoryManager() {
    return _instance;
  }

  CategoryManager._internal() {
    _categories = CategoryDataList().fetchCategoryData();
  }

  late List<CategoryListModel> _categories;

  List<CategoryListModel> get categories => _categories;

  void addCategory(CategoryListModel category) {
    _categories.add(category);
  }
}

class CategoryDataList {
  List<CategoryListModel> fetchCategoryData() {
    return [
      CategoryListModel(
        title: 'Grocery',
        svgPath: 'assets/icons/category_8.svg'
      ),
      CategoryListModel(
        title: 'Work',
        svgPath: 'assets/icons/category_1.svg'
      ),
      CategoryListModel(
        title: 'Sports',
        svgPath: 'assets/icons/category_2.svg'
      ),
      CategoryListModel(
        title: 'Design',
        svgPath: 'assets/icons/category_3.svg'
      ),
      CategoryListModel(
        title: 'University',
        svgPath: 'assets/icons/category_4.svg'
      ),
      CategoryListModel(
        title: 'Social',
        svgPath: 'assets/icons/category_5.svg'
      ),
      CategoryListModel(
        title: 'Music',
        svgPath: 'assets/icons/category_6.svg'
      ),
      CategoryListModel(
        title: 'Health',
        svgPath: 'assets/icons/category_7.svg'
      ),
      CategoryListModel(
        title: 'Movie',
        svgPath: 'assets/icons/category_9.svg'
      ),
      CategoryListModel(
        title: 'Home',
        svgPath: 'assets/icons/category_10.svg'
      ),
    ];
  }
}

// class CategoryDataList{
//   List<CategoryListModel> fetchCategoryData(){
//    return [
//      CategoryListModel(
//       title: 'Grocery',
//       svgPath: 'assets/icons/category_1'
//     ),
//          CategoryListModel(
//       title: 'Work',
//       svgPath: 'assets/icons/category_2'
//     ),
//          CategoryListModel(
//       title: 'Sports',
//       svgPath: 'assets/icons/category_3'
//     ),
//          CategoryListModel(
//       title: 'Design',
//       svgPath: 'assets/icons/category_4'
//     ),
//          CategoryListModel(
//       title: 'University',
//       svgPath: 'assets/icons/category_5'
//     ),
//          CategoryListModel(
//       title: 'Social',
//       svgPath: 'assets/icons/category_6'
//     ),
//          CategoryListModel(
//       title: 'Music',
//       svgPath: 'assets/icons/category_7'
//     ),
//          CategoryListModel(
//       title: 'Health',
//       svgPath: 'assets/icons/category_8'
//     ),
//          CategoryListModel(
//       title: 'Movie',
//       svgPath: 'assets/icons/category_9'
//     ),
//          CategoryListModel(
//       title: 'Home',
//       svgPath: 'assets/icons/category_10'
//     ),
//    ];
//   }
//  }