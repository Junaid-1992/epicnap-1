import 'package:first_project/utils/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';


import '../../model/user_model.dart';
import '../../screens/custom_widgets/prograssdialog.dart';
import '../../web_services/user_services.dart';

class NameScreenController  extends GetxController{
  TextEditingController nameController = TextEditingController();


  void onLoginTap(){
    Get.toNamed(AppConstant.kAgeScreen);
  }

  void onRegisterTap(){
    Get.toNamed(AppConstant.kRegisterScreen);
  }

  // void selectDate(BuildContext context) async {
  //   DateTime picked = await showDatePicker(
  //     context: context,
  //     initialDate: selectedDate.value,
  //     firstDate: DateTime(2000),
  //     lastDate: DateTime(2101),
  //   );
  //
  //   if (picked != null && picked != selectedDate.value) {
  //     selectedDate(picked);
  //     dateController.text = DateFormat('yyyy-MM-dd').format(selectedDate.value);
  //   }
  // }


}