import 'package:first_project/model/influncer_model.dart';

class UserModel {
  int id=0;
  String name="";
  String email="";
  String emailVerifiedAt="";
  String createdAt="";
  String updatedAt="";
  String country="";
  String type="";
  String message="";

  InfluencerModel influencerModel=InfluencerModel.empty();

  UserModel.empty();

  UserModel(
      {required this.id,
        required this.name,
        required this.email,
        required  this.emailVerifiedAt,
        required  this.createdAt,
        required  this.updatedAt,
        required  this.country,
        required  this.type,
        required this.influencerModel});

  UserModel.fromJson(Map<String, dynamic> json,String messageD) {
    message=messageD;
    id = json['id']??0;
    name = json['name']??'';
    email = json['email']??'';
    emailVerifiedAt = json['email_verified_at']??'';
    createdAt = json['created_at']??'';
    updatedAt = json['updated_at']??'';
    country = json['country']??'';
    type = json['type']??'';
    influencerModel = InfluencerModel.fromJson(json['influencer']??{});
  }


}
