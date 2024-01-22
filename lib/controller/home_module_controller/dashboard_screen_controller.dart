

import 'package:first_project/screens/custom_widgets/custom_dialog.dart';
import 'package:first_project/screens/home_module/course_screen.dart';
import 'package:first_project/screens/home_module/influencer_home_screen.dart';
import 'package:first_project/screens/home_module/support_screen.dart';
// import 'package:first_project/support.dart';
import 'package:first_project/utils/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/user_model.dart';
import '../../screens/home_module/home.dart';
import '../../screens/home_module/influencer_screen.dart';

class DashboardScreenController  extends GetxController{

 RxInt currentIndex = 0.obs;


 RxString name = ''.obs;

 RxString email = ''.obs;
 RxString country = ''.obs;

 RxInt id = 0.obs;
 @override

 void onInit() {
  super.onInit();
  print('abcd');
  final userModel = Get.arguments as UserModel; // Cast the arguments to UserModel

  name.value = userModel.name ?? "Test Data";

  email.value = userModel.email ?? "";

  id.value = userModel.id;

  print(id.value);
 }


 final List<Widget> listOfScreens=[
  const HomeScreen(),
  // const InfluencerHomeScreen(),
  const CourseScreen(),
  // Support(),
  const SupportScreen(),
  const InfluencerScreen()

 ];

 CustomDialog customDialog = CustomDialog();
 void onDialog(){
  CustomDialog.showMyDialog();
 }



}