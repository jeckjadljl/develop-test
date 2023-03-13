// To parse this JSON data, do
//
//     final queryLoginCaptcha = queryLoginCaptchaFromJson(jsonString);

import 'dart:convert';

QueryLoginCaptcha queryLoginCaptchaFromJson(String str) => QueryLoginCaptcha.fromJson(json.decode(str));

String queryLoginCaptchaToJson(QueryLoginCaptcha data) => json.encode(data.toJson());

class QueryLoginCaptcha {
  QueryLoginCaptcha({
    required this.loginCaptcha,
  });

  LoginCaptcha loginCaptcha;

  factory QueryLoginCaptcha.fromJson(Map<String, dynamic> json) => QueryLoginCaptcha(
    loginCaptcha: LoginCaptcha.fromJson(json["loginCaptcha"]),
  );

  Map<String, dynamic> toJson() => {
    "loginCaptcha": loginCaptcha.toJson(),
  };
}

class LoginCaptcha {
  LoginCaptcha({
    required this.msg,
    required this.status,
    required this.refreshToken,
    required this.token,
    required this.data,
  });

  String msg;
  String status;
  String refreshToken;
  String token;
  Data data;

  factory LoginCaptcha.fromJson(Map<String, dynamic> json) => LoginCaptcha(
    msg: json["msg"],
    status: json["status"],
    refreshToken: json["refresh_token"],
    token: json["token"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "msg": msg,
    "status": status,
    "refresh_token": refreshToken,
    "token": token,
    "data": data.toJson(),
  };
}

class Data {
  Data({
    required this.username,
    required this.sex,
    required this.email,
    required this.wechat,
    required this.dsc,
    required this.profilePicture,
    required this.mobile,
  });

  String username;
  String sex;
  String email;
  String wechat;
  String dsc;
  String profilePicture;
  String mobile;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    username: json["username"],
    sex: json["sex"],
    email: json["email"],
    wechat: json["wechat"],
    dsc: json["dsc"],
    profilePicture: json["profile_picture"],
    mobile: json["mobile"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "sex": sex,
    "email": email,
    "wechat": wechat,
    "dsc": dsc,
    "profile_picture": profilePicture,
    "mobile": mobile,
  };
}


LoginCaptchaRequest loginCaptchaRequestFromJson(String str) => LoginCaptchaRequest.fromJson(json.decode(str));

String loginCaptchaRequestToJson(LoginCaptchaRequest data) => json.encode(data.toJson());

class LoginCaptchaRequest {
  LoginCaptchaRequest({
    required this.mobile,
    required this.area,
    required this.code,
  });

  String mobile;
  int area;
  String code;

  factory LoginCaptchaRequest.fromJson(Map<String, dynamic> json) => LoginCaptchaRequest(
    mobile: json["mobile"],
    area: json["area"],
    code: json["code"],
  );

  Map<String, dynamic> toJson() => {
    "mobile": mobile,
    "area": area,
    "code": code,
  };
}
