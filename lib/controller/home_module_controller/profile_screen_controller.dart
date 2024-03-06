import 'package:first_project/controller/home_module_controller/dashboard_screen_controller.dart';
import 'package:first_project/utils/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProfileScreenController  extends GetxController{
  TextEditingController nameController = TextEditingController();

  void onLogoutTap(){
    Get.toNamed(AppConstant.kWelcomeScreen);
  }

  void onPrivacyTap(){
    Get.toNamed(AppConstant.kPrivacyScreen);
  }


  void onFaqTap(){
    Get.toNamed(AppConstant.kFaqScreen);
  }

  void onSettingsTap(){
    Get.toNamed(AppConstant.kSettingsScreen);
  }

}