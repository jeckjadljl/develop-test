class SchemaUser {
//验证码发送
//请求数据参考
//{"mobile":"15110880530","area":86}
  static const String gqlVerifySend = r'''
query verifySend($mobile:String!,$area:Int!){
  verifySend(mobile: $mobile,area: $area){
    status
    msg
  }
}
''';
//验证码验证
//请求数据参考
//{"mobile":"15110880530","area":86,"code":"312113"}
  static const String gqlLoginCaptcha = r'''
query loginCaptcha($mobile:String!,$area:Int!,$code:String!){
  loginCaptcha(mobile:$mobile,area:$area,code:$code){
    status
    msg
    token
    refresh_token
    data{
     username
     profile_picture
     sex
     mobile
     email
     wechat
     dsc
    }
  }
}
''';
  //验证码验证
//请求数据参考
//{"mobile":"15110880530","password":"1334213313"}
  static const String gqlLoginPassword = r'''
query loginPassword($mobile:String!,$password:String!){
  loginPassword(mobile:$mobile,password:$password){
    status
    msg
    token
    refresh_token
    data{
     username
     profile_picture
     sex
     mobile
     email
     wechat
     dsc
    }
  }
}
''';

//用户登录
//请求数据参考
//{"name": "shiming","password": "12345678"}
  static const String gqlUserLogin = r'''
query UserLogin($name: String!, $password: String!) {
  userLogin(userInput: {name: $name, password: $password}) {
    status
    msg
    token
    data {
      _id
      name
      sex
      password
      birth
      position
      industry
      phone
      email
      wechat
      detailMsg
      description
      duration
      userType
      identity
      imgUrl
      iconUrl
      bigCoverUrl
      profileImgUrl
      videoUrl
    }
  }
}
''';

//用户注册
//请求数据参考
//{"name": "1111111","password": "1111111","ensurePassword": "1111111"}
  static const String gqlUserRegister = r'''
  mutation UserLogin($name: String!, $password: String!, $ensurePassword: String!) {
  userRigister(userInput: {name: $name, password: $password, ensurePassword: $ensurePassword}) {
    msg
    status
  }
}

''';

//用户数据修改
//请求数据参考
//{"_id":"61d9604f5fcd295d1b6893cf","name": "shiming","sex":"1","description": "hello","wechat": "shiming4325","phone": "234532632"}

  static const String gqlUserUpdata = r'''
mutation userUpdate($_id: String!, $name: String!, $sex: String!, $description: String!, $wechat: String!, $phone: String!) {
  userUpdate(userInput: {_id: $_id, name: $name, sex: $sex, description: $description, wechat: $wechat, phone: $phone}) {
    msg
    status
  }
}



''';

// {"_id":"61d9604f5fcd295d1b6893cf","name": "shiming","sex":"1","description": "hello","wechat": "shiming4325","phone": "234532632"}
// mutation userUpdate($_id: String!, $name: String!, $sex: String!, $description: String!, $wechat: String!, $phone: String!) {
//   userUpdate(userInput: {_id: $_id, name: $name, sex: $sex, description: $description, wechat: $wechat, phone: $phone}) {
//     msg
//     status
//   }
// }

  /// 用户一键登录
  /// {"token": "shiming","accessToken": "1234567"}
  static const String gqlUserQuickLogin = r'''
query ($token: String!, $accessToken: String!){
  mobileLogin(userCheck:{token:$token,accessToken:$accessToken}) {
    msg
    token
    status
    data {
      _id
      name
      account
      sex
      birth
      position
      company
      industry
      phone
      email
      wechat
      schoolRecord
      workCondition
      detailMsg
      description
      duration
      category
      userType
      identity
      imgUrl
      iconUrl
      bigCoverUrl
      profileImgUrl
      videoUrl
      country
      address
      addTime
      timestamp
    }
  }
}
''';
}
