import 'dart:ffi';
import 'dart:io';

import 'package:first_project/model/influncer_model.dart';
import 'package:first_project/utils/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


import '../../model/user_model.dart';
import '../../screens/custom_widgets/prograssdialog.dart';
import '../../web_services/user_services.dart';
import 'influencer_dashoard_controller.dart';

class EditProfileScreenController  extends GetxController{
  final TextEditingController userController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController introductionController = TextEditingController();
  final TextEditingController eductionController = TextEditingController();

   InfluencerDashboardScreenController influencerDsScreenController = Get.find<InfluencerDashboardScreenController>();

   UserServices userServices = UserServices();
  ProgressDialog progressDialog = ProgressDialog();

  RxString name = ''.obs;
  RxString description = ''.obs;
  RxString email = ''.obs;
  RxString about = ''.obs;
  RxString education = ''.obs;
  RxString message = ''.obs;
  RxString imageUrl = ''.obs;
  RxString imageUrls = ''.obs;
  RxInt influencerId = 0.obs;
  File? selectedImage;

  Future<void> pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      selectedImage = File(pickedFile.path);

      imageUrls.value = selectedImage!.path;
      print("imagessss, $imageUrls");
      update();
    }
  }


  Future<void> edit() async{
      // ImagePicker ima = ImagePicker();
    // print(InfluencerDashboardScreenController().id)
    progressDialog.showDialog();
    UserModel userModel=await userServices.editProfiles(user: userController.text, email: emailController.text, description: descriptionController.text, introduction:introductionController.text,
    education:eductionController.text
    );
    print(userModel.toString());
    if(userModel !=null){
      progressDialog.dismissDialog();


      Get.offNamed(AppConstant.kInfluencerDashboardScreen,arguments: userModel);

    }

    else{
      progressDialog.dismissDialog();
    }

    // ProgressDialog progressDialog = ProgressDialog();
  }


  Future<void> edits() async{
    InfluencerDashboardScreenController influencerController =
    Get.find<InfluencerDashboardScreenController>();
    int influencerId = influencerController.id.value;
    File? imageFile = selectedImage ?? File('default_image_path.jpg');
    print("Influencer ID: $imageFile");
    progressDialog.showDialog();
    InfluencerModel influencerModel=await userServices.editProfile(user: userController.text, email: emailController.text, description: descriptionController.text, introduction:introductionController.text,
        education:eductionController.text, id: influencerId , image: imageFile,
    );
    print(influencerModel.toString());
    if(influencerModel !=null){
      progressDialog.dismissDialog();
      name.value = influencerModel.name;
      description.value = influencerModel.description;
      email.value = influencerModel.email;
      education.value = influencerModel.education;
      about.value = influencerModel.about;
      // imageUrl.value = influencerModel.imageUrl;
      imageUrl.value = influencerModel.imageUrl?.isNotEmpty ?? false
          ? "https://abiola.conceptrecall.com/images/${influencerModel.imageUrl}"
          : "https://t3.ftcdn.net/jpg/05/02/17/94/240_F_502179445_7kWfZy9ayWqgxvynbnrwoTE6pFEch3mb.jpg";
      message.value = 'edit';
      print(message.value);
          // Get.offNamed(AppConstant.kInfluencerDashboardScreen,arguments: influencerModel);
         Get.offNamed(AppConstant.kInfluencerDashboardScreen);
    }

    else{
      progressDialog.dismissDialog();
    }

    // ProgressDialog progressDialog = ProgressDialog();
  }
}