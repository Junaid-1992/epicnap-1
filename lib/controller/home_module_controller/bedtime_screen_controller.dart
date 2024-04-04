// import 'package:audioplayers/audioplayers.dart';
// import 'package:first_project/controller/home_module_controller/dashboard_screen_controller.dart';
// import 'package:first_project/utils/app_constant.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:get/get.dart';
// import 'dart:typed_data';
// import 'package:timezone/timezone.dart' as tz;
//
//
// class BedTimeScreenController  extends GetxController{
//
//   DashboardScreenController dashboardScreenController=Get.find<DashboardScreenController>();
//   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//   FlutterLocalNotificationsPlugin();
//   final AudioPlayer audioPlayer = AudioPlayer();
//
//   // Variables to store selected alarm time and song path
//   // Rx<DateTime?> selectedTime = Rx<DateTime?>(DateTime.now());
//   tz.TZDateTime scheduledTime = tz.TZDateTime.from(selectedTime.value!, tz.local);
//
//   String selectedSongPath = 'path/to/your/alarm/song.mp3'; // Replace with your default song path
//
//   @override
//   void onInit() {
//     super.onInit();
//     initializeNotifications();
//   }
//
//   void initializeNotifications() async {
//     const AndroidInitializationSettings initializationSettingsAndroid =
//     AndroidInitializationSettings('@mipmap/ic_launcher');
//
//     final InitializationSettings initializationSettings =
//     InitializationSettings(android: initializationSettingsAndroid);
//
//     await flutterLocalNotificationsPlugin.initialize(initializationSettings);
//   }
//
//   Future<void> showNotification(String title, String body) async {
//     const AndroidNotificationDetails androidPlatformChannelSpecifics =
//     AndroidNotificationDetails(
//       'alarm_notification',
//       'Alarm Notification',
//       // 'Channel for alarm notifications',
//       importance: Importance.max,
//       priority: Priority.high,
//     );
//
//     const NotificationDetails platformChannelSpecifics =
//     NotificationDetails(android: androidPlatformChannelSpecifics);
//
//     await flutterLocalNotificationsPlugin.show(
//       0,
//       title,
//       body,
//       platformChannelSpecifics,
//     );
//   }
//
//   Future<void> playAlarm(String assetPath) async {
//     await audioPlayer.play(assetPath, isLocal: true);
//   }
//
//   void selectTime(BuildContext context) async {
//     final TimeOfDay? pickedTime = await showTimePicker(
//       context: context,
//       initialTime: TimeOfDay.now(),
//     );
//
//     if (pickedTime != null) {
//       selectedTime.value = DateTime(
//         DateTime.now().year,
//         DateTime.now().month,
//         DateTime.now().day,
//         pickedTime.hour,
//         pickedTime.minute,
//       );
//     }
//   }
//
//   void scheduleAlarm() async {
//     // Check if selectedTime is null
//     if (selectedTime.value == null) {
//       Get.snackbar(
//         'Error',
//         'Please select an alarm time',
//         snackPosition: SnackPosition.BOTTOM,
//       );
//       return;
//     }
//
//     // Calculate time until alarm
//     final now = DateTime.now();
//     final timeUntilAlarm = selectedTime.value!.difference(now);
//
//     // Ensure selectedTime is not in the past
//     if (timeUntilAlarm.isNegative) {
//       Get.snackbar(
//         'Error',
//         'Selected alarm time has already passed',
//         snackPosition: SnackPosition.BOTTOM,
//       );
//       return;
//     }
//
//     // Schedule notification
//     await flutterLocalNotificationsPlugin.zonedSchedule(
//       0,
//       'Alarm',
//       'Wake up!',
//       scheduledTime,
//       const NotificationDetails(
//         android: AndroidNotificationDetails(
//           'alarm_notification',
//           'Alarm Notification',
//           // 'Channel for alarm notifications',
//           importance: Importance.max,
//           priority: Priority.high,
//           enableVibration: true,
//         ),
//       ),
//       androidAllowWhileIdle: true,
//       uiLocalNotificationDateInterpretation:
//       UILocalNotificationDateInterpretation.absoluteTime,
//     );
//
//     // Schedule audio playing
//     Future.delayed(timeUntilAlarm, () {
//       playAlarm(selectedSongPath);
//     });
//   }
//
//
//
//   void onInfluncerTap({required String title,required String description , required String imageUrl}){
//     Get.toNamed(AppConstant.kSingleInfluencerScreen,arguments: [title , description , imageUrl]);
//   }
//
//
//   void onCourseTap({required String title,required String description , required String imageUrl}){
//     Get.toNamed(AppConstant.kSingleCourseScreen,arguments: [title , description , imageUrl]);
//   }
//
//   void onCoursesTap(){
//     Get.toNamed(AppConstant.kCourseScreen);
//   }
//
//   void onTracking(){
//     Get.toNamed(AppConstant.kTrackingScreen);
//   }
//
//   void onanalysisTap(){
//     Get.toNamed(AppConstant.kAnalysisScreen);
//   }
// }


import 'package:audioplayers/audioplayers.dart';
import 'package:first_project/controller/home_module_controller/dashboard_screen_controller.dart';
import 'package:first_project/utils/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'dart:typed_data';
import 'package:timezone/timezone.dart' as tz;

class BedTimeScreenController extends GetxController {
  DashboardScreenController dashboardScreenController =
  Get.find<DashboardScreenController>();
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();
  final AudioPlayer audioPlayer = AudioPlayer();


  // Variables to store selected alarm time and song path
  Rx<DateTime?> selectedTime = Rx<DateTime?>(DateTime.now());
  String selectedSongPath = 'https://epicnap.com/wp-content/uploads/2024/02/Drifting-into-sleep-final-1-2.mp3';

  @override
  void onInit() {
    super.onInit();
    initializeNotifications();
  }

  void initializeNotifications() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('@mipmap/ic_launcher');

    final InitializationSettings initializationSettings =
    InitializationSettings(android: initializationSettingsAndroid);


    // await flutterLocalNotificationsPlugin.initialize(initializationSettings);
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: onDidReceiveNotificationResponse);
    // await flutterLocalNotificationsPlugin.initialize(initializationSettings,
    //
    //     onSelectNotification: (String? payload) async {
    //       if (payload == 'stop_music') {
    //         await audioPlayer.stop();
    //       }
    //     });

  }

  Future<void> showNotification(String title, String body) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails(
      'alarm_notification',
      'Alarm Notification',
      // 'Channel for alarm notifications',
      importance: Importance.max,
      priority: Priority.high,
    );

    const NotificationDetails platformChannelSpecifics =
    NotificationDetails(android: androidPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.show(
      0,
      title,
      body,
      platformChannelSpecifics,
    );
  }

  // Future<void> playAlarm(String assetPath) async {
  //   final player = AudioPlayer();
  //   await player.play(UrlSource('https://epicnap.com/wp-content/uploads/2024/02/Drifting-into-sleep-final-1-2.mp3'));
  //
  // }

  // void onDidReceiveNotificationResponse(
  //      String? payload) async {
  //
  //
  // }

  void playAlarm(String assetPath) async {
    await audioPlayer.play(UrlSource(assetPath));

    // Show notification with action button to stop the music
    await flutterLocalNotificationsPlugin.show(
      1,
      'Alarm is playing',
      'Tap to stop the alarm',
      NotificationDetails(
        android: AndroidNotificationDetails(
          'alarm_notification',
          'Alarm Notification',
          importance: Importance.high,
          priority: Priority.high,
          enableVibration: true,

          playSound: false, // Disable sound to prevent duplicate sound with audioPlayer
        ),
      ),
      payload: 'stop_music', // Use a unique payload to identify the action
    );
  }


  void selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      selectedTime.value = DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        pickedTime.hour,
        pickedTime.minute,
      );
    }
  }

  void scheduleAlarm() async {
    // Check if selectedTime is null
    if (selectedTime.value == null) {
      Get.snackbar(
        'Error',
        'Please select an alarm time',
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    // Convert selectedTime to TZDateTime using the local timezone
    tz.TZDateTime scheduledTime = tz.TZDateTime.from(
      selectedTime.value!,
      tz.local,
    );

    // Calculate time until alarm
    final now = tz.TZDateTime.now(tz.local);
    final timeUntilAlarm = scheduledTime.difference(now);

    // Ensure selectedTime is not in the past
    if (timeUntilAlarm.isNegative) {
      Get.snackbar(
        'Error',
        'Selected alarm time has already passed',
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    // Schedule notification
    await flutterLocalNotificationsPlugin.zonedSchedule(
      0,
      'Alarm',
      'Wake up!',
      scheduledTime,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'alarm_notification',
          'Alarm Notification',
          // 'Channel for alarm notifications',
          importance: Importance.max,
          priority: Priority.high,
          enableVibration: true,
        ),
      ),
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation:
      UILocalNotificationDateInterpretation.absoluteTime,
    );

    // Schedule audio playing
    Future.delayed(timeUntilAlarm, () {
      playAlarm(selectedSongPath);
    });
  }

  // void scheduleAlarm() async {
  //   // Check if selectedTime is null
  //   if (selectedTime.value == null) {
  //     Get.snackbar(
  //       'Error',
  //       'Please select an alarm time',
  //       snackPosition: SnackPosition.BOTTOM,
  //     );
  //     return;
  //   }
  //
  //   // Convert selectedTime to TZDateTime using the local timezone
  //   tz.TZDateTime scheduledTime = tz.TZDateTime.from(
  //     selectedTime.value!,
  //     tz.local,
  //   );
  //
  //   // Calculate time until alarm
  //   final now = tz.TZDateTime.now(tz.local);
  //   final timeUntilAlarm = scheduledTime.difference(now);
  //
  //   // Ensure selectedTime is not in the past
  //   if (timeUntilAlarm.isNegative) {
  //     Get.snackbar(
  //       'Error',
  //       'Selected alarm time has already passed',
  //       snackPosition: SnackPosition.BOTTOM,
  //     );
  //     return;
  //   }
  //
  //   // Schedule notification
  //   await flutterLocalNotificationsPlugin.zonedSchedule(
  //     0,
  //     'Alarm',
  //     'Wake up!',
  //     scheduledTime,
  //     const NotificationDetails(
  //       android: AndroidNotificationDetails(
  //         'alarm_notification',
  //         'Alarm Notification',
  //         importance: Importance.max,
  //         priority: Priority.high,
  //         enableVibration: true,
  //       ),
  //     ),
  //     androidAllowWhileIdle: true,
  //     uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
  //   );
  //
  //   // Show a notification with an action button to stop the music
  //   await flutterLocalNotificationsPlugin.show(
  //     1,
  //     'Stop Music',
  //     'Tap to stop the alarm',
  //     NotificationDetails(
  //       android: AndroidNotificationDetails(
  //         'stop_music_channel',
  //         'Stop Music',
  //         importance: Importance.high,
  //         priority: Priority.high,
  //       ),
  //     ),
  //     payload: 'stop_music',
  //   );
  //
  //   // Schedule audio playing
  //   Future.delayed(timeUntilAlarm, () {
  //     playAlarm(selectedSongPath);
  //   });
  // }

  void onInfluncerTap(
      {required String title,
        required String description,
        required String imageUrl}) {
    Get.toNamed(AppConstant.kSingleInfluencerScreen,
        arguments: [title, description, imageUrl]);
  }

  void onCourseTap(
      {required String title,
        required String description,
        required String imageUrl}) {
    Get.toNamed(AppConstant.kSingleCourseScreen,
        arguments: [title, description, imageUrl]);
  }

  void onCoursesTap() {
    Get.toNamed(AppConstant.kCourseScreen);
  }

  void onTracking() {
    Get.toNamed(AppConstant.kTrackingScreen);
  }

  void onanalysisTap() {
    Get.toNamed(AppConstant.kAnalysisScreen);
  }

  void onDidReceiveNotificationResponse(NotificationResponse details) async {
    await audioPlayer.stop();
  }
}
