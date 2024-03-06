import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:first_project/controller/auth_module_controller/setpass_screen_controller.dart';
import 'package:first_project/controller/auth_module_controller/welcome_screen_controller.dart';
import 'package:first_project/controller/home_module_controller/history_screen_controller.dart';
import 'package:first_project/controller/home_module_controller/maindashboard_screen_controller.dart';
import 'package:first_project/screens/custom_widgets/custom_primary_button.dart';
import 'package:first_project/utils/app_colors.dart';
import 'package:first_project/utils/app_constant.dart';
import 'package:first_project/welcome.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/auth_module_controller/name_screen_controller.dart';
import '../custom_widgets/custom_textfield.dart';
import 'antisleep.dart';
import 'maindashboard_screen.dart';
import 'profile_screen.dart';

class HistoryScreen extends GetView<HistoryScreenController>{

  const HistoryScreen({Key? key}) : super(key: key);



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
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Hello Jessey!',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),

                                    Text(
                                      'Have a good day',
                                      style: TextStyle(
                                        fontSize: 16,
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
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Image.asset(
                        'assets/top.png',
                        width: 40,

                      ),
                    ),
                  ],
                ),


                Container(
                  height: 220,


                  // padding: EdgeInsets.symmetric(horizontal: 40 , vertical: 40 ),
                  padding: EdgeInsets.only(bottom: 30, left: 20, right:20),

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/purple.png'),
                      fit: BoxFit.cover,


                    ),
                  ),

                  child: Container(
                    padding: EdgeInsets.only(top: 30),

                    // Adjust the left value as needed
                    // child: buildCountry(),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Column(
                              children: [
                                Text(
                                  'Your sleep/mood graph',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),

                              ],
                            ),
                          ),
                          // Add other text widgets if needed
                        ],
                      ),
                    ),


                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(top: 0, bottom: 0, right: 20, left: 20),
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 0),
                  decoration: BoxDecoration(
                    color: Color(0xffD8D8D8).withOpacity(0.1),
                    // borderRadius: BorderRadius.circular(20),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, ),
                        child: Container(

                          padding: EdgeInsets.only(left: 10, right: 10,bottom: 5, top: 5),
                          decoration: BoxDecoration(
                            color: Color(0xff5A0BFE),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          child: Text(
                            'Sleep amount',
                            style: TextStyle(
                              fontSize: 14,
                              // fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),


                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10,),
                        child: Container(

                          padding: EdgeInsets.only(left: 10, right: 10,bottom: 5, top: 5),
                          decoration: BoxDecoration(
                            color: Color(0xff250567),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          child: Text(
                            'Mood',
                            style: TextStyle(
                              fontSize: 14,
                              // fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),


                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10,),
                        child: Container(

                          padding: EdgeInsets.only(left: 10, right: 10,bottom: 5, top: 5),
                          decoration: BoxDecoration(
                            color: Color(0xff826AB5),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          child: Text(
                            'Sleep quality',
                            style: TextStyle(
                              fontSize: 14,
                              // fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),


                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 0, bottom: 20, right: 20, left: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    // color: Color(0xffD8D8D8).withOpacity(0.1),
                    // borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFD8D8D8).withOpacity(0.1),
                        Color(0xFF5A0BFE).withOpacity(0.3),
                        Color(0xFF5A0BFE).withOpacity(0.3),
                        Color(0xFF5A0BFE).withOpacity(0.2),
                      ],
                      stops: [0.0, 0.9, 1.75, 1.0],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  height: 200,



                  child: LineChart(
                    LineChartData(
                      borderData: FlBorderData(
                        show: false, // Hide the border
                      ),
                      gridData: FlGridData(
                        show: true,
                        checkToShowVerticalLine: (value) => value % 6 == 0,

                         // Show vertical lines at integer intervals
                      ),
                      titlesData: FlTitlesData(
                        show: false, // Hide titles (numbers)
                      ),
                      minX: 0,
                      maxX: 6,
                      minY: 0,
                      maxY: 10,
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            FlSpot(0, 4),
                            FlSpot(1, 2),
                            FlSpot(2, 2),
                            FlSpot(3, 5),
                            FlSpot(4, 2),
                            FlSpot(5, 2),
                            FlSpot(6, 8), // Add more spots here for the other days
                          ],
                          isCurved: true,
                          color: Color(0xff826AB5),
                          barWidth: 2,
                          isStrokeCapRound: true,
                          dotData: FlDotData(show: false),
                          belowBarData: BarAreaData(show: false),
                        ),

                        LineChartBarData(
                          spots: [
                            FlSpot(0, 2),
                            FlSpot(1, 3),
                            FlSpot(2, 8),
                            FlSpot(3, 3),
                            FlSpot(4, 6),
                            FlSpot(5, 2),
                            FlSpot(6, 2),
                          ],
                          isCurved: true,
                          color: Color(0Xff5A0BFE),

                          barWidth: 2,
                          isStrokeCapRound: true,
                          dotData: FlDotData(show: false),
                          belowBarData: BarAreaData(show: false),
                        ),

                        LineChartBarData(
                          spots: [
                            FlSpot(0, 6),
                            FlSpot(1, 6),
                            FlSpot(2, 3),
                            FlSpot(3, 4),
                            FlSpot(4, 9),
                            FlSpot(5, 9),
                            FlSpot(6, 5),
                          ],
                          isCurved: true,
                          color: Color(0Xff250567),

                          barWidth: 2,
                          isStrokeCapRound: true,
                          dotData: FlDotData(show: false),
                          belowBarData: BarAreaData(show: false),
                        ),
                        // Repeat LineChartBarData for each line you want to draw
                      ],
                    ),
                  ),


                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: Column(
                              children: [
                                Text(
                                  'Sun',
                                  style: TextStyle(
                                    fontSize: 12,

                                    color: Colors.white,
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Column(
                              children: [
                                Text(
                                  'Mon',
                                  style: TextStyle(
                                    fontSize: 12,

                                    color: Colors.white,
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Column(
                              children: [
                                Text(
                                  'Tue',
                                  style: TextStyle(
                                    fontSize: 12,

                                    color: Colors.white,
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Column(
                              children: [
                                Text(
                                  'Wed',
                                  style: TextStyle(
                                    fontSize: 12,

                                    color: Colors.white,
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Column(
                              children: [
                                Text(
                                  'Thu',
                                  style: TextStyle(
                                    fontSize: 12,

                                    color: Colors.white,
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Column(
                              children: [
                                Text(
                                  'Fri',
                                  style: TextStyle(
                                    fontSize: 12,

                                    color: Colors.white,
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Column(
                              children: [
                                Text(
                                  'Sat',
                                  style: TextStyle(
                                    fontSize: 12,

                                    color: Colors.white,
                                  ),
                                ),

                              ],
                            ),
                          ),
                          // Add other text widgets if needed
                        ],
                      ),
                    ),


                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Column(
                              children: [
                                Text(
                                  'Check your last moods',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),

                              ],
                            ),
                          ),
                          // Add other text widgets if needed
                        ],
                      ),
                    ),


                  ],
                ),




                SizedBox(
                  height: 20,
                ),

          Container(
            height: 500,
            child: ListView.builder(

              itemCount: 8, // Set the number of containers you want to display
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(top: 0, bottom: 20, right: 20, left: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xffD8D8D8).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
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
                                      padding: const EdgeInsets.only(right: 0),
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10, right: 10,bottom: 20, top: 10),
                                        decoration: BoxDecoration(
                                          color: Color(0xffD8D8D8).withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              '14',
                                              style: TextStyle(
                                                fontSize: 22,
                                                // fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),

                                            Text(
                                              'Aug',
                                              style: TextStyle(
                                                fontSize: 22,
                                                // fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(height: 10,),


                                            Text(
                                              '6 survey',
                                              style: TextStyle(
                                                fontSize: 14,
                                                // fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),


                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 30.0, bottom: 10),
                                            child: Text(
                                              'I was happy',
                                              style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context).size.width - 250,  // Adjust the width based on your layout
                                            child: Text(
                                              'Strong relationship with family and friends can bring happiness.',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                              ),
                                              overflow: TextOverflow.ellipsis,  // Show ellipsis (...) if the text overflows
                                              maxLines: 4,  // Adjust the number of lines to show
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Image.asset(
                            'assets/emoji.png',
                            width: 60,


                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                );
              },
            ),
          ),






          SizedBox(height: 20,),





        ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xff161D34),
              // spreadRadius: 1,
              // blurRadius: 1,
              // offset: Offset(0, 1),
            ),
          ],
        ),
        child: CircleNavBar(
          activeIcons: [
            Image.asset(
              'assets/logos.png',
              width: 30,
              height: 30,
            ),
            Image.asset(
              'assets/logos.png',
              width: 34,
              height: 34,
            ),
            Image.asset(
              'assets/logos.png',
              width: 34,
              height: 34,
            ),
            Image.asset(
              'assets/logos.png',
              width: 30,
              height: 30,
            ),
            Image.asset(
              'assets/logos.png',
              width: 30,
              height: 30,
            ),
          ],
          inactiveIcons: [
            Image.asset(
              'assets/item1.png',
              width: 50,
              height: 50,
            ),
            Image.asset(
              'assets/item2.png',
              width: 50,
              height: 50,
            ),
            Image.asset(
              'assets/item3.png',
              width: 50,
              height: 50,
            ),
            Image.asset(
              'assets/item3.png',
              width: 50,
              height: 50,
            ),
            Image.asset(
              'assets/item4.png',
              width: 50,
              height: 50,
            ),





          ],
          color: Colors.grey,
          circleColor: Color(0xffFFFFFF).withOpacity(0.1),
          height: 70,
          circleWidth: 70,
          padding: const EdgeInsets.only(left: 6, right: 6, bottom: 0),
          cornerRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(24),
            bottomLeft: Radius.circular(24),
          ),
          shadowColor: Colors.black38.withOpacity(0.2),
          circleShadowColor: Color(0xffFFFFFF).withOpacity(0.2),
          elevation: 10,
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xffFFFFFF).withOpacity(0.2), Color(0xffFFFFFF).withOpacity(0.2)],
          ),
          circleGradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xffFFFFFF).withOpacity(0.2), Color(0xffFFFFFF).withOpacity(0.2)],
          ),
          activeIndex: 2,
          // onTap: onTap,


          onTap: (index) {
            // Handle navigation to different pages based on the tapped index

            // _currentIndex = index;
            // Perform navigation or any other actions here based on the index
            if (index == 0) {
              // Navigate to "My" page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainDashboradScreen()),
              );
            }
            else if (index == 1) {
              // Navigate to "Like" page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HistoryScreen()),
              );
            }
            else if (index == 2) {
              // Navigate to "Like" page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AntisleepScreen()),
              );
            }

            else if (index == 3) {
              // Navigate to "Like" page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AntisleepScreen()),
              );
            }

            else if (index == 4) {
              // Navigate to "Like" page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            }

          },
        ),
      ),
    );
  }


  Widget _buildProductCard(BuildContext context , String title) {
    return GestureDetector(
      onTap: () {
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
                color: Color(0xffD8D8D8).withOpacity(0.2),
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