import 'package:first_project/controller/auth_module_controller/setpass_screen_controller.dart';
import 'package:first_project/controller/auth_module_controller/welcome_screen_controller.dart';
import 'package:first_project/controller/home_module_controller/bedtime_screen_controller.dart';
import 'package:first_project/controller/home_module_controller/maindashboard_screen_controller.dart';
import 'package:first_project/controller/home_module_controller/tracking_screen_controller.dart';
import 'package:first_project/screens/custom_widgets/custom_primary_button.dart';
import 'package:first_project/utils/app_colors.dart';
import 'package:first_project/utils/app_constant.dart';
import 'package:first_project/welcome.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/auth_module_controller/name_screen_controller.dart';
import '../custom_widgets/custom_textfield.dart';

class TrackingScreen extends GetView<TrackingScreenController>{

  const TrackingScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;


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
            padding: EdgeInsets.all(0),

              children: [
                SizedBox(height: 20,),

                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [


                              Container(
                                padding: EdgeInsets.only(left: 18.0,),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.back(); // Navigate back to the previous screen
                                  },
                                  child: Image.asset(
                                    'assets/previous.png', // Replace with the path to your back icon image
                                    width: 15, // Adjust the width according to your design

                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  'Tracking',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 40.0),

                              )

                            ],
                          ),
                          // Add other text widgets if needed
                        ],
                      ),
                    ),
                  ],
                ),
            SizedBox(height: 20,),

                Container(
                  height: 300,
                  width: 300,



                  // padding: EdgeInsets.symmetric(horizontal: 40 , vertical: 40 ),
                  padding: EdgeInsets.only(bottom: 30, left: 30, right:30),

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/timechart.png'),

                      // fit: BoxFit.cover,


                    ),
                  ),






                ),
                  SizedBox(height: 20,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:8.0),
                        child: Image.asset(
                          'assets/alarm.png', // Replace with the path to your back icon image
                          width: 25, // Adjust the width according to your design

                        ),
                      ),
                      Text(
                        'Alarm 6:00 AM',
                        style: TextStyle(
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),


                      ),


                    ],
                  ),

                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Column(
                        children: [
                          Text(
                            'Bed time',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),


                          ),

                          Text(
                            '10:30 PM',
                            style: TextStyle(
                              fontSize: 14,
                              // fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),


                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right:5.0),
                        child: Image.asset(
                          'assets/Rectangle.png', // Replace with the path to your back icon image
                          width: 5,
                          height: 50,// Adjust the width according to your design

                        ),
                      ),

                      Column(
                        children: [
                          Text(
                            'Quality',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),


                          ),

                          Text(
                            '70%',
                            style: TextStyle(
                              fontSize: 14,
                              // fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),


                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right:5.0),
                        child: Image.asset(
                          'assets/Rectangle.png', // Replace with the path to your back icon image
                          width: 5,
                          height: 50,// Adjust the width according to your design

                        ),
                      ),

                      Column(
                        children: [
                          Text(
                            'Interruption',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),


                          ),
                          Text(
                            'Not yet',
                            style: TextStyle(
                              fontSize: 14,
                              // fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),


                          ),
                        ],
                      ),


                    ],
                  ),
                ),

                SizedBox(height: 30,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 0, bottom: 0, right: 70, left: 70), // Adjust margin for the paddings
                        padding: EdgeInsets.all(10), // Adjust padding for the entire content
                        decoration: BoxDecoration(
                          color: Color(0xffD8D8D8).withOpacity(0.2), // Set your desired box color
                          borderRadius: BorderRadius.circular(10), // Optional: Add border radius
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[

                                Flexible(
                                  // padding: const EdgeInsets.only(left: 0.0, top: 0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right:10.0),
                                        child: Image.asset(
                                          'assets/music.png', // Replace with the path to your back icon image
                                          width: 25, // Adjust the width according to your design

                                        ),
                                      ),
                                      Text(
                                        'sleeping music playing',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff939393),
                                        ),
                                      ),


                                    ],
                                  ),
                                ),




                                // Add other text widgets or content if needed
                              ],
                            ),

                          ],
                        ),








                      ),

                    ),

                  ],
                ),




                SizedBox(height: 40,),

                Padding(
                  padding: const EdgeInsets.symmetric(

                      horizontal: 30
                  ),
                  child: CustomPrimaryButton(buttonText: 'Stop Tracking', onButtonPressed: (){
                    controller.onRegisterTap();
                  },buttonColor: Color(0xff8650F6),textColor: Colors.white,),
                ),








                SizedBox(height: 20,),





        ],
          ),
        ),
      ),
    );
  }


  Widget _buildProductCard(BuildContext context , String title) {
    return GestureDetector(
      onTap: () {
        // controller.onanalysisTap();
        // controller.onInfluncerTap(title: title , description: description, imageUrl: imageUrl );

      },
      child: Container(
        width: 55,

        margin: EdgeInsets.only(left: 8, right: 8),
        child: Column(
          children: <Widget>[
            Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black.withOpacity(0.5),
                //     blurRadius: 5,
                //     spreadRadius: 0,
                //     offset: Offset(0, 3),
                //   ),
                // ],
                // You can set a background color for the container if needed
                color: Color(0xff8650F6).withOpacity(0.9),
              ),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }


}