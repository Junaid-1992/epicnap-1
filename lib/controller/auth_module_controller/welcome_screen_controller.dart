import 'package:first_project/utils/app_constant.dart';
import 'package:get/get.dart';

class WelcomeScreenController  extends GetxController{

  void onLoginTap(){
    Get.toNamed(AppConstant.kLoginScreen);
  }

  void onRegisterTap(){
    Get.toNamed(AppConstant.kRegisterScreen);
  }


}