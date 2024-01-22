import 'package:first_project/controller/auth_module_controller/create_password_screen_controller.dart';
import 'package:first_project/controller/auth_module_controller/login_screen_controller.dart';
import 'package:first_project/controller/auth_module_controller/otp_screen_controller.dart';
import 'package:first_project/controller/auth_module_controller/welcome_screen_controller.dart';
import 'package:first_project/controller/home_module_controller/account_settings_controller.dart';
import 'package:first_project/controller/home_module_controller/category_setting_controller.dart';
import 'package:first_project/controller/home_module_controller/chat_screen_controller.dart';
import 'package:first_project/controller/home_module_controller/course_screen_controller.dart';
import 'package:first_project/controller/home_module_controller/dashboard_screen_controller.dart';
import 'package:first_project/controller/home_module_controller/edit_profile_screen_controller.dart';
import 'package:first_project/controller/home_module_controller/influencer_dashoard_controller.dart';
import 'package:first_project/controller/home_module_controller/influencer_home_controller.dart';
import 'package:first_project/controller/home_module_controller/influencer_screen_controller.dart';
import 'package:first_project/controller/home_module_controller/payment_add_controller.dart';
import 'package:first_project/controller/home_module_controller/payment_screen_controller.dart';
import 'package:first_project/controller/home_module_controller/payment_setting_controller.dart';
import 'package:first_project/controller/home_module_controller/single_course_screen_controller.dart';
import 'package:first_project/controller/home_module_controller/support_screen_controller.dart';
import 'package:first_project/screens/home_module/category_setting_screen.dart';
import 'package:first_project/screens/home_module/single_influencer_screen.dart';
import 'package:get/get.dart';

import '../controller/auth_module_controller/forget_screen_controller.dart';
import '../controller/auth_module_controller/register_screen_controller.dart';
import '../controller/home_module_controller/home_screen.dart';
import '../controller/home_module_controller/single_influencer_screen_controller.dart';


class ScreenBindings extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => WelcomeScreenController());
   Get.lazyPut(() => LoginScreenController());
   Get.lazyPut(() => RegisterScreenController());
   Get.lazyPut(() => ForgetScreenController());

   Get.lazyPut(() => HomeScreenController());
   Get.lazyPut(() => SingleInfluencerScreenController());
   Get.lazyPut(() => SingleCourseScreenController());
   Get.lazyPut(() => DashboardScreenController());
   Get.lazyPut(() => CourseScreenController());
   Get.lazyPut(() => InfluencerScreenController());
   Get.lazyPut(() => InfluencerDashboardScreenController());
   Get.lazyPut(() => InfluencerHomeController());
   Get.lazyPut(() => EditProfileScreenController());
   Get.lazyPut(() => PaymentScreenController());
   Get.lazyPut(() => SupportScreenController());
   Get.lazyPut(() => AccountSettingController());
   Get.lazyPut(() => ChatScreenController());
   Get.lazyPut(() => OtpScreenController());
   Get.lazyPut(() => CreatePasswordScreenController());
   Get.lazyPut(() => PaymentSettingController());
   Get.lazyPut(() => CategorySettingController());
   Get.lazyPut(() => PaymentAddController());
  }
}