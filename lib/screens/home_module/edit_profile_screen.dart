
import 'dart:io';

import 'package:first_project/controller/home_module_controller/edit_profile_screen_controller.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../custom_widgets/custom_primary_button.dart';
import '../custom_widgets/custom_textfield.dart';
import 'package:image_picker/image_picker.dart';


class EditProfileScreen extends GetView<EditProfileScreenController>{
  final File? selectedImage;
  // const EditProfileScreen({super.key});
  const EditProfileScreen({Key? key, this.selectedImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Stack(
            children: <Widget>[


              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(


                ),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 8,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                          // Container(
                          //   alignment: Alignment.center,
                          //   child: Row(
                          //     children: [
                          //       Text(
                          //         'Edit Profile!',
                          //         style: TextStyle(
                          //           color: Colors.black87,
                          //           fontSize: 28,
                          //           fontWeight: FontWeight.bold,
                          //         ),
                          //       ),
                          //       Spacer(), // This will push the following widgets to the right.
                          //       Icon(
                          //         Icons.notifications,
                          //         color: Colors.black87,
                          //         size: 36,
                          //       ),
                          //       Container(
                          //         width: 60, // Set the width to create a square container
                          //         height: 60, // Set the height to create a square container
                          //         decoration: BoxDecoration(
                          //           borderRadius: BorderRadius.circular(12),
                          //           shape: BoxShape.rectangle,
                          //           border: Border.all(
                          //             color: Colors.black38, // Black border color
                          //             width: 2, // Border width
                          //           ),
                          //         ),
                          //         child: ClipRRect(
                          //           borderRadius: BorderRadius.circular(10), // Set border radius to 0 for a square shape
                          //           child: Image.network(
                          //             controller.influencerDsScreenController.imageUrl.value,// Use the dynamic image URL or path
                          //             fit: BoxFit.cover, // Use BoxFit.cover to fill the square container
                          //           ),
                          //         ),
                          //       ),
                          //       // Use Image.asset to display the user image from the assets folder.
                          //       // Image.asset(
                          //       //   'assets/influencer1.jpg', // Replace with the actual asset path.
                          //       //   width: 60,
                          //       //   height: 60,
                          //       // ),
                          //     ],
                          //   ),
                          // ),

                        Container(
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              // Back Button
                              GestureDetector(
                                onTap: () {
                                  Get.back(); // Navigate back to the previous screen
                                },
                                child: Image.asset(
                                  'assets/back.png', // Replace with the path to your back icon image
                                  width: 45, // Adjust the width according to your design
                                  height: 45, // Adjust the height according to your design
                                ),
                              ),


                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Edit Profile!',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),

                              // Image on the right
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: Colors.black38,
                                    width: 2,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    controller.influencerDsScreenController.imageUrl.value,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),



                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child:CustomTextField(controller: controller.userController,hintText: "Username",prefixIcon:const Icon(
                            Icons.person,
                            color: Color(0xffc7cdd2),
                          ),),
                        ),


                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child:CustomTextField(controller: controller.emailController,hintText: "Email",prefixIcon:const Icon(
                            Icons.email,
                            color: Color(0xffc7cdd2),
                          ),),
                        ),








                        const Padding(
                          padding: EdgeInsets.only(bottom: 30 ),

                        ),

                        Container(
                          alignment: Alignment.center,
                          child: Row(
                            children: [


                              GestureDetector(
                                onTap: controller.pickImage,
                                child: Obx(
                                  ()=> Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.black38,
                                        width: 2,
                                      ),
                                    ),
                                    child: controller.imageUrls.value ?.isNotEmpty ?? false
                                        ? ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.file(
                                        controller.selectedImage!,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                        : Icon(
                                      Icons.add_photo_alternate,
                                      size: 40,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),

                              Text(

                                'Change Profile',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 24,

                                ),
                              ),
                               // This will push the following widgets to the right.



                            ],
                          ),
                        ),

                        const Padding(
                          padding: EdgeInsets.only(bottom: 30 ),

                        ),
                        // TextField(
                        //   maxLines: 3,
                        //   decoration: InputDecoration(
                        //     hintText: 'Description',
                        //     filled: true, // Fill the background with color
                        //     fillColor: Color(0xffF5F5FF), // Set the background color to grey
                        //       border: OutlineInputBorder(
                        //         borderSide: BorderSide(color: Colors.grey, width: 2.0),
                        //         borderRadius: BorderRadius.circular(10.0), // Optional: Add border radius
                        //       ),
                        //   ),
                        //   controller: controller.descriptionController,
                        // ),


                        TextField(
                          maxLines: 3,
                          style: TextStyle(color: Colors.grey), // Set text color
                          decoration: InputDecoration(
                            hintText: 'Description',
                            filled: true,
                            fillColor: Color(0xffF5F5FF),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          controller: controller.descriptionController,
                        ),



                        const Padding(
                          padding: EdgeInsets.only(bottom: 30 ),

                        ),
                        // const Text(
                        //   'Introduction',
                        //   style: TextStyle(
                        //     color: Colors.black87,
                        //     fontSize: 24,
                        //
                        //   ),
                        // ),
                        // TextField(
                        //   maxLines: 8,
                        //   decoration: InputDecoration(
                        //     hintText: 'Introduction',
                        //     filled: true, // Fill the background with color
                        //     fillColor: Color(0xffF5F5FF),  // Set the background color to grey
                        //     border: OutlineInputBorder(
                        //       borderSide: BorderSide.none, // Remove the border
                        //     ),
                        //   ),
                        //   controller: controller.introductionController,
                        // ),

                        TextField(
                          maxLines: 8,
                          style: TextStyle(color: Colors.grey), // Set text color
                          decoration: InputDecoration(
                            hintText: 'Introduction',
                            filled: true,
                            fillColor: Color(0xffF5F5FF),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          controller: controller.introductionController,
                        ),

                        const Padding(
                          padding: EdgeInsets.only(bottom: 30 ),

                        ),
                        // const Text(
                        //   'Education',
                        //   // controller.influencerDashboardScreenController.name.value,
                        //   style: TextStyle(
                        //     color: Colors.black87,
                        //     fontSize: 24,
                        //
                        //   ),
                        // ),
                        // TextField(
                        //   maxLines: 5,
                        //   decoration: InputDecoration(
                        //     hintText: 'Eduction ',
                        //     filled: true, // Fill the background with color
                        //     fillColor: Color(0xffF5F5FF), // Set the background color to grey
                        //     border: OutlineInputBorder(
                        //       borderSide: BorderSide.none, // Remove the border
                        //     ),
                        //   ),
                        //   controller: controller.eductionController,
                        // ),


                        TextField(
                          maxLines: 6,
                          style: TextStyle(color: Colors.grey), // Set text color
                          decoration: InputDecoration(
                            hintText: 'Eduction',
                            filled: true,
                            fillColor: Color(0xffF5F5FF),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          controller: controller.eductionController,
                        ),

                        const Padding(
                          padding: EdgeInsets.only(bottom: 30 ),

                        ),

                        CustomPrimaryButton(buttonText: "Submit", height: 50, onButtonPressed: (){
                          // controller.login();
                          controller.edits();
                        },
                          buttonColor: CustomAppColor.kBlackColor,
                        ),

                        const Padding(
                          padding: EdgeInsets.only(bottom: 20 ),

                        ),








                      ]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }





}






