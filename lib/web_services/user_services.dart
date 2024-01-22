import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:first_project/model/user_model.dart';
import 'package:first_project/web_services/web_service_url.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:path/path.dart';

import '../model/influncer_model.dart';
import '../model/response_model.dart';
import 'http_clients.dart';
import 'package:http/http.dart' as http;

class UserServices{

  UserServices._internalPrivateConstructor();

  static final UserServices _instance = UserServices._internalPrivateConstructor();

  factory UserServices(){
    return _instance;
  }

  final HttpRequestClient _httpRequestClient = HttpRequestClient();

  Future<String> registerUser({required String email,required String password,required String name , required String confirm , required String country , required String user})async{
    Map<String, dynamic> requestBody={
      "email" : email,
      "password" : password,
      "confirm" : confirm,
      "name" : name,
      "country" : country,
      "user":user
    };
    print('-------------------$requestBody');
    ResponseModel responseModel = await _httpRequestClient.postRequest(url: registerUrl,requestBody: requestBody,isTokenRequired: false);
    print('-------------------${responseModel.statusDescription}');
    if(responseModel.statusDescription=="Registration successful"){
      return responseModel.statusDescription;
    }else{
      return responseModel.statusDescription;
    }
  }


  Future<UserModel> loginUser({required String email,required String password})async{
    Map<String, dynamic> requestBody={
      "email" : email,
      "password" : password,
    };
    UserModel userModel=UserModel.empty();
    ResponseModel responseModel = await _httpRequestClient.postRequest(url: loginUrl,requestBody: requestBody,isTokenRequired: false);
   print("hello $responseModel");
    if(responseModel.statusDescription=="successful"){
      userModel=UserModel.fromJson(responseModel.data, responseModel.statusDescription);

      return userModel;
    }else{
      userModel.message=responseModel.statusDescription;
      return userModel;
    }
  }

  Future<InfluencerModel> editProfile({
    required String email,
    required String user,
    required String education,
    required String introduction,
    required String description,
    required int id,
    required File image,
  }) async {
    InfluencerModel influencerModel=InfluencerModel.empty();
    try {
      var requestBody = {
        "email": email,
        "user": user,
        "education": education,
        "description": description,
        "introduction": introduction,
        "user_id": id.toString(),
      };

      var request = http.MultipartRequest('POST', Uri.parse(editProfileUrl));

      // Add text fields to the request
      requestBody.forEach((key, value) {
        request.fields[key] = value.toString();
      });

      // Add the image file to the request
      if (image != null) {
        var stream = http.ByteStream(image.openRead());
        var length = await image.length();
        var multipartFile = http.MultipartFile('image', stream, length,
            filename: basename(image.path));
        request.files.add(multipartFile);
      }

      // Send the request
      var client = http.Client();
      var response = await client.send(request);

      // Process the response
      var responseData = await response.stream.bytesToString();
      var jsonResponse = jsonDecode(responseData);
      if (jsonResponse != null) {
        // Create an instance of InfluencerModel from the decoded JSON
        influencerModel = InfluencerModel.fromJson(jsonResponse['data']);

        // Print or use influencerModel as needed
        print("Influencer Model: $jsonResponse");

        return influencerModel;
      } else {
        // Handle unexpected JSON structure
        print("Unexpected JSON structure");
        throw Exception("Unexpected JSON structure");
      }

    } catch (e) {
      print('Error: $e');
      throw e;
    }
  }


  // Future<InfluencerModel> editProfile({required String email,required String user, required String education, required String introduction, required String description , required int id , required File image, })async{
  //   InfluencerModel influencerModel=InfluencerModel.empty();
  //   try {
  //     Map<String, dynamic> requestBody={
  //       "email" : email,
  //       "user" : user,
  //       "education" : education,
  //       "description" : description,
  //       "introduction" : introduction,
  //       // "user_id" : id,
  //       "user_id": id.toString(),
  //       "image" : image,
  //
  //
  //
  //
  //     };
  //
  //     print(requestBody);
  //     ResponseModel responseModel = await _httpRequestClient.postmultipartRequest(
  //       url: editProfileUrl,
  //       requestBody: requestBody,
  //       isTokenRequired: false,
  //       requestHeader: {"Content-Type": "multipart/form-data"},
  //     );
  //     // ResponseModel responseModel = await _httpRequestClient.postmultipartRequest(url: editProfileUrl,requestBody: requestBody,isTokenRequired: false);
  //     // print(responseModel);
  //     if(responseModel.statusDescription=="successful"){
  //       influencerModel=InfluencerModel.fromJson(responseModel.data);
  //       print(influencerModel);
  //       return influencerModel;
  //     }else{
  //       influencerModel.message=responseModel.statusDescription;
  //       return influencerModel;
  //     }
  //   }
  //
  //   catch(e){
  //     print("multipart ,$e");
  //   }
  //   return influencerModel;
  //
  // }



  Future<UserModel> editProfiles({required String email,required String user, required String education, required String introduction, required String description })async{

    Map<String, dynamic> requestBody={
      "email" : email,
      "user" : user,
      "education" : education,
      "description" : description,
      "introduction" : introduction,
      // "id" : id,

    };

    UserModel userModel=UserModel.empty();
    print('-------------------$requestBody');
    ResponseModel responseModel = await _httpRequestClient.postRequest(url: editProfileUrl,requestBody: requestBody,isTokenRequired: false);

    if(responseModel.statusDescription=="successful"){

      userModel=UserModel.fromJson(responseModel.data, responseModel.statusDescription);
      // print(userModel.toString());
      return userModel;
    }else{
      userModel.message=responseModel.statusDescription;
      return userModel;
    }
  }






  // Future<void> initiatePaypalPayment({int userId })async{
  //
  //   Map<String, dynamic> requestBody={
  //     "user_id": userId.toString(),
  //     // "id" : id,
  //
  //   };
  //
  //   UserModel userModel=UserModel.empty();
  //   print('-------------------$requestBody');
  //   final response = await _httpRequestClient.postRequest(url: editProfileUrl,requestBody: requestBody,isTokenRequired: false);
  //
  //   if (response.statusCode == 200) {
  //     // Parse the response and handle the approval URL
  //     final approvalUrl = json.decode(response.body)['approvalUrl'];
  //
  //     if (approvalUrl != null) {
  //       // Navigate to the approval URL or handle success as needed
  //     } else {
  //       // Handle error
  //     }
  //   } else {
  //     // Handle HTTP error
  //   }
  // }


  Future<String> initiatePaypalPayments({required int userId})async{
    Map<String, dynamic> requestBody={

      "user_id": userId.toString(),
    };
    print('-------------------$requestBody');
    ResponseModel responseModel = await _httpRequestClient.postRequest(url: PaypalUrl,requestBody: requestBody,isTokenRequired: false);
    print('-------------------${responseModel}');
    if(responseModel.statusDescription=="Registration successful"){

      return responseModel.statusDescription;
    }else{
      return responseModel.statusDescription;
    }
  }




  Future<String> initiatePaypalPayment({required int userId}) async {
    try {
      final String url = 'http://10.0.2.2:8000/api/process-transaction'; // Replace with your Laravel API endpoint for PayPal initiation

      final Map<String, dynamic> requestBody = {
        "user_id": userId.toString(),
        // Add other parameters as needed
      };
print(requestBody);
      final http.Response response = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(requestBody),
      );
print(response.body);
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);

        if (responseData['status'] == "success") {
          return "Payment initiation successful";
        } else {
          return "Payment initiation failed: ${responseData['message']}";
        }
      } else {
        return "Failed to initiate payment: ${response.reasonPhrase}";
      }
    } catch (e) {
      return "Error: $e";
    }
  }



  Future<String> paymentsettings({required String first,required String second,required String third, required int id })async{
    Map<String, dynamic> requestBody={
      "first" : first,
      "second" : second,
      "third" : third,
      "user_id": id.toString(),

    };
    print('-------------------$requestBody');
    ResponseModel responseModel = await _httpRequestClient.postRequest(url: PaymentSettings,requestBody: requestBody,isTokenRequired: false);
    // print('-------------------${responseModel}');
    if(responseModel.data=="saved"){
      return responseModel.data;
    }else{
      return responseModel.statusDescription;
    }
  }



  Future<String> categorysettings({required String first,required String second,required String third, required int id })async{
    Map<String, dynamic> requestBody={
      "first" : first,
      "second" : second,
      "third" : third,
      "user_id": id.toString(),

    };
    print('-------------------$requestBody');
    ResponseModel responseModel = await _httpRequestClient.postRequest(url: CategorySettings,requestBody: requestBody,isTokenRequired: false);
    // print('-------------------${responseModel}');
    if(responseModel.data=="saved"){
      return responseModel.data;
    }else{
      return responseModel.statusDescription;
    }
  }


  Future<String> paymentsadd({required String first,required String third, required int id })async{
    Map<String, dynamic> requestBody={
      "first" : first,

      "third" : third,
      "user_id": id.toString(),

    };
    print('-------------------$requestBody');
    ResponseModel responseModel = await _httpRequestClient.postRequest(url: Paymentadd,requestBody: requestBody,isTokenRequired: false);
    // print('-------------------${responseModel}');
    if(responseModel.data=="saved"){
      return responseModel.data;
    }else{
      return responseModel.statusDescription;
    }
  }


}