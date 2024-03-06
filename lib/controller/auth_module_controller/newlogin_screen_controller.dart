import 'package:first_project/utils/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../model/user_model.dart';

import '../../screens/custom_widgets/prograssdialog.dart';
import '../../web_services/user_services.dart';

class NewloginScreenController  extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  UserServices userServices = UserServices();
  ProgressDialog progressDialog = ProgressDialog();
  void onLoginTap(){
    Get.offNamed(AppConstant.kDashboardScreen);
  }

  Future<void> login() async{
    progressDialog.showDialog();
    UserModel userModel=await userServices.loginUser(email: emailController.text, password: passwordController.text);
    print(userModel.toString());
    if(userModel.type=="influencer"){
      progressDialog.dismissDialog();

      Get.offNamed(AppConstant.kDashboardScreen,arguments: userModel);

    }
    else if(userModel.type =="user"){
      progressDialog.dismissDialog();
      Get.offNamed(AppConstant.kDashboardScreen,arguments: userModel);
    }
    else{
      progressDialog.dismissDialog();
    }
  }

  void onRegisterTap(){
    Get.toNamed(AppConstant.kRegisterScreen);
  }

  @override
  void onInit() {
    emailController.text = 'user111@gmail.com';
    passwordController.text = 'Explore999';
    super.onInit();
  }


}