import 'package:flutter/material.dart';
import 'package:week2_taqanarslan/ui/add_user/add_user_view.dart';

class HomeViewModel {
  void buttonOnTap(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AddUserView()));
  }
}
