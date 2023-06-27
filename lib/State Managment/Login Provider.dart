import 'package:flutter/cupertino.dart';

class email_provider with ChangeNotifier{

  String email = "";
  String get get_email_value=> email;
  void set_email_value(value){

    email = value;
    notifyListeners();
  }

}



class password_provider with ChangeNotifier{

  String password = "";
  String get get_password_value=> password;

  void set_passsword_value(value){
    password = value;
    notifyListeners();
  }


}