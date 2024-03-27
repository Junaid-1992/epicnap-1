import 'package:first_project/utils/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';


import '../../model/user_model.dart';
import '../../screens/custom_widgets/prograssdialog.dart';
import '../../web_services/user_services.dart';

class NameScreenController  extends GetxController{
  TextEditingController nameController = TextEditingController();

  ProgressDialog progressDialog = ProgressDialog();
  UserServices userServices = UserServices();
  void onLoginTap(){
    Get.toNamed(AppConstant.kAgeScreen);
  }

  void onRegisterTap(){
    Get.toNamed(AppConstant.kRegisterScreen);
  }
  Future<void> login() async{
    progressDialog.showDialog();
    // UserModel userModel=await userServices.loginUser(email: nameController.text);
    // print(userModel.toString());
    // if(userModel.type=="influencer"){
    //   progressDialog.dismissDialog();
    //
    //   Get.offNamed(AppConstant.kInfluencerDashboardScreen,arguments: userModel);
    //
    // }
    // else if(userModel.type =="user"){
    //   progressDialog.dismissDialog();
    //   Get.offNamed(AppConstant.kDashboardScreen,arguments: userModel);
    // }
    // else{
    //   progressDialog.dismissDialog();
    // }
  }


}
