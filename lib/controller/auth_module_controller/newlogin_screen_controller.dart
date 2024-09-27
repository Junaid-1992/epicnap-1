import 'dart:convert';

import 'package:first_project/utils/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/user_model.dart';

import '../../screens/custom_widgets/prograssdialog.dart';
import '../../web_services/user_services.dart';


class NewloginScreenController  extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  UserServices userServices = UserServices();
  ProgressDialog progressDialog = ProgressDialog();
  bool isLogged = false;
  String emails = '';
  String passwords = '';

  @override
  void onInit() {


    super.onInit();

    checkLoggedIn();
  }



  void checkLoggedIn() async {
    print('object');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    String emails = prefs.getString('userEmail') ?? '';
    String passwords = prefs.getString('userPassword') ?? '';
    emailController.text = emails;
    passwordController.text = passwords;
    print('password $passwords');
    if (isLoggedIn) {

      navigateToDashboard();
    }
  }
  void onLoginTap(){
    Get.offNamed(AppConstant.kDashboardScreen);
  }

  void navigateToDashboard() {
    Get.offNamed(AppConstant.kSplashScreen);
  }

  Future<void> login() async{
    progressDialog.showDialog();
    UserModel userModel=await userServices.loginUser(email: emailController.text, password: passwordController.text);
    print(userModel.toString());
    if(userModel.message == "successful"){
      print(userModel.name);
      progressDialog.dismissDialog();
      String currentTime = DateTime.now().toString();
      // await LocalStorage().setLoggedIn(true);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', true);
      await prefs.setInt('userId', userModel.id);
      String userModelJson = jsonEncode(userModel.toJson());
      await prefs.setString('userModel', userModelJson);
      await prefs.setString('currentTime', currentTime);
      await prefs.setString('userEmail', emailController.text);
      await prefs.setString('userPassword', passwordController.text);

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
  void onDispose() {
    emailController.dispose();
    passwordController.dispose();
    // super.onDispose();
  }
  // @override
  // void onInits() {
  //   emailController.text = 'user111@gmail.com';
  //   passwordController.text = 'Explore999';
  //   super.onInit();
  // }


}