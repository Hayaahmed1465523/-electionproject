class LoginResponseModel {
  final  String token ;
  final String error;
  LoginResponseModel({ required this.token,required this.error});
  factory LoginResponseModel.fromjson(Map<String,dynamic>json){
    return LoginResponseModel(token: json["token"]!= null? json["token"]: "",
        error: json["error"]!= null? json["error"]: "");

  }

}


class loginRequestModel {
  String? email;
  String? password;

  loginRequestModel({this.email, this.password});

  /*loginRequestModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }*/

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map= new Map<String, dynamic>();
    map['email'] = email?.trim();
    map['password'] = password?.trim();
    return map;
  }
}