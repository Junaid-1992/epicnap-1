import 'dart:convert';

import 'package:first_project/utils/app_constant.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/user_model.dart';
import '../../screens/custom_widgets/prograssdialog.dart';
import '../../web_services/user_services.dart';

class SplashScreenController  extends GetxController{

  var opacity = 0.0.obs;
  var scale = 0.5.obs;
  String emails = '';
  String passwords = '';

  @override
  void onInit() {
    super.onInit();
    // Start the animation when the controller is initialized
    animateLogo();
  }

  void animateLogo() async {
    // Delay before starting the animation
    await Future.delayed(Duration(seconds: 1));
    // Animate opacity
    opacity.value = 1.0;
    // Animate scale
    scale.value = 1.0;
    await Future.delayed(Duration(seconds: 1));
    login();
  }


  void onLoginTap(){
    Get.toNamed(AppConstant.kAcceptScreen);
  }

  UserServices userServices = UserServices();
  ProgressDialog progressDialog = ProgressDialog();

  Future<void> login() async{


    SharedPreferences prefs = await SharedPreferences.getInstance();

    String emails = prefs.getString('userEmail') ?? '';
    String passwords = prefs.getString('userPassword') ?? '';
    progressDialog.showDialog();
    UserModel userModel=await userServices.loginUser(email: emails, password: passwords);
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
      await prefs.setString('userEmail', emails);
      await prefs.setString('userPassword', passwords);

      Get.offNamed(AppConstant.kDashboardScreen,arguments: userModel);

    }

    else{

      progressDialog.dismissDialog();
    }
  }

  void onRegisterTap(){
    Get.toNamed(AppConstant.kRegisterScreen);
  }

}