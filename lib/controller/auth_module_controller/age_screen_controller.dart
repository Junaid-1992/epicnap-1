import 'package:first_project/utils/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AgeScreenController  extends GetxController{
  TextEditingController ageController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  Rx<DateTime> selectedDate = DateTime.now().obs;

  void onLoginTap(){
    Get.toNamed(AppConstant.kEmailScreen);
  }
  void onRegisterTap(){
    Get.toNamed(AppConstant.kRegisterScreen);
  }
}