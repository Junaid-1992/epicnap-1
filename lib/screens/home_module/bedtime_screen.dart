import 'package:first_project/controller/auth_module_controller/setpass_screen_controller.dart';
import 'package:first_project/controller/auth_module_controller/welcome_screen_controller.dart';
import 'package:first_project/controller/home_module_controller/bedtime_screen_controller.dart';
import 'package:first_project/controller/home_module_controller/maindashboard_screen_controller.dart';
import 'package:first_project/screens/custom_widgets/custom_primary_button.dart';
import 'package:first_project/utils/app_colors.dart';
import 'package:first_project/utils/app_constant.dart';
import 'package:first_project/welcome.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/auth_module_controller/name_screen_controller.dart';
import '../custom_widgets/custom_textfield.dart';

class BedTimeScreen extends GetView<BedTimeScreenController>{

  const BedTimeScreen({Key? key}) : super(key: key);



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
                                  'Set bedtime',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),

                            ],
                          ),
                          // Add other text widgets if needed
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Image.asset(
                        'assets/top.png',
                        width: 50,

                      ),
                    ),
                  ],
                ),
            SizedBox(height: 20,),


           Container(
             padding: EdgeInsets.only(left: 30, right: 30),
             child: Image.asset(
               'assets/timer.png'
             ),
           ),
                SizedBox(
                  height: 20,
                ),


                Container(
                  padding: EdgeInsets.only(left: 20, right:20, top: 15),
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildProductCard(context ,'Mo'),
                      _buildProductCard(context ,'Tu' ),
                      _buildProductCard(context ,'We' ),
                      _buildProductCard(context ,'Th'),
                      _buildProductCard(context ,'Fr' ),
                      _buildProductCard(context ,'Sa' ),
                      _buildProductCard(context ,'Su'),

                    ],
                  ),
                ),

                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 0, bottom: 0, right: 10, left: 20), // Adjust margin for the paddings
                        padding: EdgeInsets.all(20), // Adjust padding for the entire content
                        decoration: BoxDecoration(
                          color: Color(0xffD8D8D8).withOpacity(0.2), // Set your desired box color
                          borderRadius: BorderRadius.circular(20), // Optional: Add border radius
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[

                                Flexible(
                                  // padding: const EdgeInsets.only(left: 0.0, top: 0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Notify me to brush teeth',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),

                                      Container(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Text(
                                          '25 minutes before bedtime',
                                          style: TextStyle(
                                            fontSize: 12,

                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),


                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0,bottom: 0),
                                  child: Switch(
                                    value: true, // Set your initial switch state here
                                    onChanged: (bool value) {
                                      // Update the state variable when the switch is toggled
                                      // setState(() {
                                      //   isSwitched = value;
                                      // });

                                      // You can perform additional actions based on the switch value here
                                      if (isSwitched) {
                                        // Switch is ON
                                        print('Switch is ON');
                                        // Perform actions when the switch is ON
                                      } else {
                                        // Switch is OFF
                                        print('Switch is OFF');
                                        // Perform actions when the switch is OFF
                                      }
                                    },
                                    activeColor: Color(0xff8650F6).withOpacity(0.5), // Customize the active color
                                    inactiveThumbColor: Colors.grey, // Customize the inactive thumb color
                                    inactiveTrackColor: Colors.grey.withOpacity(0.5), // Customize the inactive track color
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

                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 0, bottom: 0, right: 10, left: 20), // Adjust margin for the paddings
                        padding: EdgeInsets.all(20), // Adjust padding for the entire content
                        decoration: BoxDecoration(
                          color: Color(0xffD8D8D8).withOpacity(0.2), // Set your desired box color
                          borderRadius: BorderRadius.circular(20), // Optional: Add border radius
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[

                                Flexible(
                                  // padding: const EdgeInsets.only(left: 0.0, top: 0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Notify me to drink water',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),

                                      Container(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Text(
                                          '15 minutes before bedtime',
                                          style: TextStyle(
                                            fontSize: 12,

                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),


                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0,bottom: 0),
                                  child: Switch(
                                    value: true, // Set your initial switch state here
                                    onChanged: (bool value) {
                                      // Update the state variable when the switch is toggled
                                      // setState(() {
                                      //   isSwitched = value;
                                      // });

                                      // You can perform additional actions based on the switch value here
                                      if (isSwitched) {
                                        // Switch is ON
                                        print('Switch is ON');
                                        // Perform actions when the switch is ON
                                      } else {
                                        // Switch is OFF
                                        print('Switch is OFF');
                                        // Perform actions when the switch is OFF
                                      }
                                    },
                                    activeColor: Color(0xff8650F6).withOpacity(0.5), // Customize the active color
                                    inactiveThumbColor: Colors.grey, // Customize the inactive thumb color
                                    inactiveTrackColor: Colors.grey.withOpacity(0.5), // Customize the inactive track color
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


                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 0, bottom: 0, right: 10, left: 20), // Adjust margin for the paddings
                        padding: EdgeInsets.all(20), // Adjust padding for the entire content
                        decoration: BoxDecoration(
                          color: Color(0xffD8D8D8).withOpacity(0.2), // Set your desired box color
                          borderRadius: BorderRadius.circular(20), // Optional: Add border radius
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[

                                Flexible(
                                  // padding: const EdgeInsets.only(left: 0.0, top: 0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Notify me to take meditation',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),

                                      Container(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Text(
                                          '10 minutes before bedtime',
                                          style: TextStyle(
                                            fontSize: 12,

                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),


                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0,bottom: 0),
                                  child: Switch(
                                    value: true, // Set your initial switch state here
                                    onChanged: (bool value) {
                                      // Update the state variable when the switch is toggled
                                      // setState(() {
                                      //   isSwitched = value;
                                      // });

                                      // You can perform additional actions based on the switch value here
                                      if (isSwitched) {
                                        // Switch is ON
                                        print('Switch is ON');
                                        // Perform actions when the switch is ON
                                      } else {
                                        // Switch is OFF
                                        print('Switch is OFF');
                                        // Perform actions when the switch is OFF
                                      }
                                    },
                                    activeColor: Color(0xff8650F6).withOpacity(0.5),// Customize the active color
                                    inactiveThumbColor: Colors.grey, // Customize the inactive thumb color
                                    inactiveTrackColor: Colors.grey.withOpacity(0.5), // Customize the inactive track color
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

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(

                      horizontal: 20
                  ),
                  child: CustomPrimaryButton(buttonText: 'Set', onButtonPressed: (){
                    controller.onTracking();
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
        controller.onanalysisTap();
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