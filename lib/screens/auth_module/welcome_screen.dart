import 'package:first_project/controller/auth_module_controller/welcome_screen_controller.dart';
import 'package:first_project/screens/custom_widgets/custom_primary_button.dart';
import 'package:first_project/utils/app_colors.dart';
import 'package:first_project/utils/app_constant.dart';
import 'package:first_project/welcome.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends GetView<WelcomeScreenController>{
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xffF5F5FF),
          child: Center(

            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.only(left: 30),
                    // color: CustomAppColor.kWhiteColor,
                    color: Color(0xffF5F5FF),
                    child: Image.asset(
                      'assets/Group 36730.png',
                      width: 350,
                      height: 350,
                    ),

                  ),

                ),
                Expanded(


                  flex: 1,
                  child: ClipRRect(

                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    child: Container(
                      color: CustomAppColor.kBlackColor.withOpacity(0.87),
                      child: Center(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                // padding: const EdgeInsets.only(bottom: 0),
                                child: Image.asset(
                                  'assets/logo-ab.png', // Path to your asset image
                                  width: 250,
                                  // height: 150,
                                  // Set the height of the image
                                ),
                              ),
                               Padding(
                                padding: EdgeInsets.only(bottom: 20,right: 30,left: 30,top: 10),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  'Is your wisdom a course? Because I am ready to enroll in the school of your insights.',
                                  style: TextStyle(
                                    color: CustomAppColor.kWhiteColor,
                                    fontSize: 16,


                                  ),
                                ),
                              ),
                             Padding(
                               padding: const EdgeInsets.symmetric(

                                 horizontal: 30
                               ),

                               child: CustomPrimaryButton(buttonText: 'Login',  onButtonPressed: (){
                                 controller.onLoginTap();
                               }),
                             ),
                              const SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.symmetric(

                                  horizontal: 30
                                ),
                                child: CustomPrimaryButton(buttonText: 'Register', onButtonPressed: (){
                                  controller.onRegisterTap();
                                },buttonColor: CustomAppColor.kLightGrey,textColor: CustomAppColor.kBlackColor,),
                              ),// Add some space between the buttons

                              // Padding(
                              //   padding: const EdgeInsets.only(bottom: 10, top: 20),
                              //   child: RichText(
                              //     text:  TextSpan(
                              //       children: [
                              //         const TextSpan(
                              //           text: 'Continue as a ',
                              //           style: TextStyle(
                              //             color: CustomAppColor.kWhiteColor,
                              //             fontSize: 14,
                              //             fontWeight: FontWeight.bold,
                              //           ),
                              //         ),
                              //         TextSpan(
                              //           text: 'guest',
                              //           style: const TextStyle(
                              //             color: CustomAppColor.kOrange, // Set brown color for 'Register now'
                              //             fontSize: 14,
                              //             fontWeight: FontWeight.bold,
                              //           ),
                              //           recognizer: TapGestureRecognizer()..onTap=()
                              //             {
                              //               // Get.to(HomeScreen());
                              //               Get.toNamed(AppConstant.kDashboardScreen);
                              //             }
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              // )







                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )



              ],
            ),


          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


}