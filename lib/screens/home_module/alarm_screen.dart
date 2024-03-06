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
import '../../controller/home_module_controller/alarm_screen_controller.dart';
import '../custom_widgets/custom_textfield.dart';

class AlarmScreen extends GetView<AlarmScreenController>{

  const AlarmScreen({Key? key}) : super(key: key);



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
              margin: EdgeInsets.only(top: 0, bottom: 0,right: 20,left: 20), // Adjust margin for the paddings
              padding: EdgeInsets.all(15), // Adjust padding for the entire content
              decoration: BoxDecoration(
                color: Color(0xffD8D8D8).withOpacity(0.2), // Set your desired box color
                borderRadius: BorderRadius.circular(20), // Optional: Add border radius
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Container(

                          decoration: BoxDecoration(
                          boxShadow: [
                          BoxShadow(
                          color: Colors.white.withOpacity(0.1), // shadow color
                        spreadRadius: 0, // spread radius
                        blurRadius: 15, // blur radius
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/clock.png',
                      width: 60,


                    ),
                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Set new alarm',
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),


                                    ],
                                  ),
                                ),

                              ],
                            ),
                            // Add other text widgets if needed
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 0.0,),
                        child: GestureDetector(
                          onTap: () {
                            controller.onAlarmTap();
                            // Get.back(); // Navigate back to the previous screen
                          },
                          child: Image.asset(
                            'assets/plus.png', // Replace with the path to your back icon image
                            width: 40, // Adjust the width according to your design

                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 0.0),
                      //   child:Image.asset(
                      //     'assets/plus.png',
                      //     width: 40,
                      //
                      //
                      //   ),
                      //
                      //
                      //
                      // ),

                    ],
                  ),



                  SizedBox(height: 10,),

                ],
              ),
            ),
                SizedBox(
                  height: 20,
                ),





                Container(
                  padding: EdgeInsets.only(left: 30, bottom: 20),
                  child: Text(
                    'Running alarms',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),


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
                                        '06 : 30 AM',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),

                                      Container(
                                        padding: EdgeInsets.only(left: 0),
                                        child: Text(
                                          'wake up from sleep',
                                          style: TextStyle(
                                            fontSize: 14,

                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10, right:10, top: 15),
                                        height: 50,
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

                                    ],
                                  ),

                                ),


                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0,bottom: 30),
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

                SizedBox(height: 20,),

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
                                        '06 : 30 AM',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),

                                      Container(
                                        padding: EdgeInsets.only(left: 0),
                                        child: Text(
                                          'wake up from sleep',
                                          style: TextStyle(
                                            fontSize: 14,

                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10, right:10, top: 15),
                                        height: 50,
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

                                    ],
                                  ),

                                ),


                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0,bottom: 30),
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

                SizedBox(height: 20,),

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
                                        '08 : 30 AM',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),

                                      Container(
                                        padding: EdgeInsets.only(left: 0),
                                        child: Text(
                                          'Breakfast with family',
                                          style: TextStyle(
                                            fontSize: 14,

                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10, right:10, top: 15),
                                        height: 50,
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

                                    ],
                                  ),

                                ),


                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0,bottom: 30),
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

                SizedBox(height: 20,),

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
                                        '10 : 30 AM',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),

                                      Container(
                                        padding: EdgeInsets.only(left: 0),
                                        child: Text(
                                          'Have to join the new class',
                                          style: TextStyle(
                                            fontSize: 14,

                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10, right:10, top: 15),
                                        height: 50,
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

                                    ],
                                  ),

                                ),


                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0,bottom: 30),
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



                SizedBox(height: 40,),





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
        width: 35,

        margin: EdgeInsets.only(left: 8, right: 8),
        child: Column(
          children: <Widget>[
            Container(
              height: 35,
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
                    fontSize: 14,
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