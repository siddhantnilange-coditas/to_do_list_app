import 'package:todo_list_app/features/onboarding/data/data_models/data_model.dart';


class ImageDataList{

 List<CarouselItem> fetchImageData(){
     return [
  CarouselItem(
    imagePath: 'assets/icons/start_image_1.svg',
    title: 'Manage your tasks',
    description: 'You can easily manage all of your daily tasks in DoMe for free',
  ),
  CarouselItem(
    imagePath: 'assets/icons/start_image_2.svg',
    title: 'Create daily routine',
    description: 'In Uptodo you can create your personalized routine to stay productive',
  ),
  CarouselItem(
    imagePath: 'assets/icons/start_image_3.svg',
    title: 'Organize your tasks',
    description: 'You can organize your daily tasks by adding your tasks into separate categories',
  ),
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