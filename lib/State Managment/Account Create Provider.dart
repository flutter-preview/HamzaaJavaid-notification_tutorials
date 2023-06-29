import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';

class username_provider with ChangeNotifier{

  String username = "";

  String get get_username => username;
   void setusername (value){
     username  = value;
     notifyListeners();
   }

}

class signup_email_provider with ChangeNotifier{

  String SignUpemail = "";

  String get get_SignUpemail => SignUpemail;
  void setSignUpemail (value){
    SignUpemail  = value;
    notifyListeners();
  }

}

class signup_password_provider with ChangeNotifier{

  String SignUppassword = "";

  String get get_SignIppassword => SignUppassword;
  void setSignUppassword (value){
    SignUppassword  = value;
    notifyListeners();
  }

}

class confirmpassword_provider with ChangeNotifier{

  String confirmpassword = "";

  String get get_confirmpassword => confirmpassword;
  void setconfirmpassword (value){
    confirmpassword  = value;
    notifyListeners();
  }

}
