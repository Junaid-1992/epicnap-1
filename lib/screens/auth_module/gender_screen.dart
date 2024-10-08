import 'package:first_project/controller/auth_module_controller/welcome_screen_controller.dart';
import 'package:first_project/screens/custom_widgets/custom_primary_button.dart';
import 'package:first_project/utils/app_colors.dart';
import 'package:first_project/utils/app_constant.dart';
import 'package:first_project/welcome.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/auth_module_controller/email_screen_controller.dart';
import '../../controller/auth_module_controller/gender_screen_controller.dart';
import '../../controller/auth_module_controller/name_screen_controller.dart';
import '../custom_widgets/custom_datefield.dart';
import '../custom_widgets/custom_textfield.dart';

class GenderScreen extends GetView<GenderScreenController>{
  const GenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF281f57),
                Color(0xFF161D34),
                Color(0xFF161D34),
                Color(0xFF281f57),
              ],
              stops: [0.0, 0.1, 0.85, 1.0],
            ),
          ),

          child: SafeArea(
            child: ListView(
              padding: EdgeInsets.all(0), // Remove any padding
              children: [
                Container(
                  margin: EdgeInsets.only(top: 190, bottom: 0, right: 30, left: 30),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 30, left: 30, top: 30),
                        child: Text(
                          'Select your Gender',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),


                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: DropdownButtonFormField<String>(
                          value: Get.put(GenderScreenController()).selectedGender.value.isEmpty ? null : Get.put(GenderScreenController()).selectedGender.value,
                          onChanged: (newValue) {
                            Get.put(GenderScreenController()).selectedGender.value = newValue!;
                          },
                          items: <String>[
                            'Male',
                            'Female',
                            'Others'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(color: Colors.white),
                              ),
                            );
                          }).toList(),
                          dropdownColor: Color(0xff161D34),
                        ),
                      ),




                      //
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 50,),
                      //   child:CustomDateField(controller: controller.emailController,
                      //   ),
                      // ),
                      Padding(
                        padding: EdgeInsets.only(right: 40, left: 40, top: 50),
                        child: CustomPrimaryButton(
                          buttonText: "Next",
                          onButtonPressed: () {
                            Get.put(GenderScreenController()).onLoginTap();
                          },
                          buttonColor: Color(0xff8650F6),
                        ),
                      ),

                      SizedBox(height: 30,)
                    ],
                  ),
                ),
              ],
            ),
          )



      ),
    );
  }





}