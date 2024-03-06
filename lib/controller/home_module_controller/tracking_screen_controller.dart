import 'package:first_project/controller/home_module_controller/dashboard_screen_controller.dart';
import 'package:first_project/utils/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TrackingScreenController  extends GetxController{
  TextEditingController nameController = TextEditingController();

  void onLoginTap(){
    Get.toNamed(AppConstant.kAcceptScreen);
  }

  void onRegisterTap(){
    Get.toNamed(AppConstant.kAlarmScreen);
  }

}