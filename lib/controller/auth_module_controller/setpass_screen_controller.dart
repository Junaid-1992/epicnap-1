import 'package:first_project/utils/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../model/user_model.dart';
import '../../screens/custom_widgets/prograssdialog.dart';
import '../../web_services/user_services.dart';

class SetPassScreenController  extends GetxController{
  TextEditingController nameController = TextEditingController();

  void onLoginTap(){
    Get.toNamed(AppConstant.kNewLoginScreen);
  }

  void onRegisterTap(){
    Get.toNamed(AppConstant.kRegisterScreen);
  }


}