
import 'package:first_project/screens/auth_module/create_password_screen.dart';
import 'package:first_project/screens/auth_module/otp_screen.dart';
import 'package:first_project/screens/auth_module/welcome_screen.dart';
import 'package:first_project/screens/home_module/account_setting_screen.dart';
import 'package:first_project/screens/home_module/category_setting_screen.dart';
import 'package:first_project/screens/home_module/chat_screen.dart';
import 'package:first_project/screens/home_module/course_screen.dart';
import 'package:first_project/screens/home_module/dashboard_screen.dart';
import 'package:first_project/screens/home_module/edit_profile_screen.dart';
import 'package:first_project/screens/home_module/influencer_dashboard_screen.dart';
import 'package:first_project/screens/home_module/influencer_home_screen.dart';
import 'package:first_project/screens/home_module/influencer_screen.dart';
import 'package:first_project/screens/home_module/payment_add_screen.dart';
import 'package:first_project/screens/home_module/payment_screen.dart';
import 'package:first_project/screens/home_module/payment_setting_screen.dart';
import 'package:first_project/screens/home_module/paypalscreen.dart';
import 'package:first_project/screens/home_module/single_course_screen.dart';
import 'package:first_project/screens/home_module/single_influencer_screen.dart';
import 'package:first_project/screens/home_module/support_screen.dart';
import 'package:first_project/utils/app_constant.dart';
import 'package:first_project/utils/screen_bindings.dart';
import 'package:get/get.dart';

import '../screens/auth_module/forget_screen.dart';
import '../screens/auth_module/login_screen.dart';
import '../screens/auth_module/register_screen.dart';
import '../screens/home_module/home.dart';

class RouteGenerator {
  static List<GetPage> getPages() {

    return [
      GetPage(
        name: AppConstant.kWelcomeScreen,
        page: () => const WelcomeScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: AppConstant.kLoginScreen,
        page: () => const LoginScreen(),
        binding: ScreenBindings(),
      ),


      GetPage(
        name: AppConstant.kRegisterScreen,
        page: () => const RegisterScreen(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: AppConstant.kForgetScreen,
        page: () => const ForgetScreen(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: AppConstant.kHomeScreen,
        page: () => const HomeScreen(),
        binding: ScreenBindings(),
      ),


      GetPage(
        name: AppConstant.kSingleInfluencerScreen,
        page: () => const SingleInfluencerScreen(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: AppConstant.kSingleCourseScreen,
        page: () => const SingleCourseScreen(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: AppConstant.kDashboardScreen,
        page: () => const DashboardScreen(),
        binding: ScreenBindings(),
      ),


      GetPage(
        name: AppConstant.kCourseScreen,
        page: () => const CourseScreen(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: AppConstant.kInfluencerScreen,
        page: () => const InfluencerScreen(),
        binding: ScreenBindings(),
      ),


      GetPage(
        name: AppConstant.kInfluencerDashboardScreen,
        page: () => const InfluencerDashboardScreen(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: AppConstant.kInfluencerHomeScreen,
        page: () => const InfluencerHomeScreen(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: AppConstant.kEditProfileScreen,
        page: () => const EditProfileScreen(),
        binding: ScreenBindings(),
      ),


      GetPage(
        name: AppConstant.kPaymentScreen,
        page: () => const PaymentScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
        name: AppConstant.kSupportScreen,
        page: () => const SupportScreen(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: AppConstant.kAccountSetting,
        page: () => const AccountSettingScreen(),
        binding: ScreenBindings(),
      ),


      GetPage(
        name: AppConstant.kChatScreen,
        page: () => const ChatScreen(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: AppConstant.kOtpScreen,
        page: () => const OtpScreen(),
        binding: ScreenBindings(),
      ),


      GetPage(
        name: AppConstant.kCreatePasswordScreen,
        page: () => const CreatePasswordScreen(),
        binding: ScreenBindings(),
      ),


      GetPage(
        name: AppConstant.kPaymentSettingScreen,
        page: () => const PaymentSettingScreen(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: AppConstant.kCategorySettingScreen,
        page: () => const CategorySettingScreen(),
        binding: ScreenBindings(),
      ),

      GetPage(
        name: AppConstant.kPaymentAddScreen,
        page: () => const PaymentAddScreen(),
        binding: ScreenBindings(),
      ),




    ];
  }


}