import 'package:flutter/material.dart';
import 'package:week2_taqanarslan/ui/home/home_view.dart';
import 'package:week2_taqanarslan/ui/home/user_model.dart';

class AddUserModelView {
  TextEditingController nameCont = TextEditingController();
  TextEditingController birthDateCont = TextEditingController();

  void buttonFunction(BuildContext context) {
    if (nameCont.text.length >= 4 && birthDateCont.text.length >= 8) {
      FocusScope.of(context).unfocus();
      UserOperations.instance.addUser(UserModel(name: nameCont.text, birthDate: birthDateCont.text));
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => HomeView()), (route) => false);
    }
  }
}
