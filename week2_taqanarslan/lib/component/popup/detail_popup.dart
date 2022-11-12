import 'package:flutter/material.dart';
import 'package:week2_taqanarslan/service/utils.dart';
import 'package:week2_taqanarslan/ui/home/user_model.dart';

class DetailPopup extends StatelessWidget {
  final UserModel userModel;
  const DetailPopup({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        padding: const EdgeInsets.only(top: 50),
        height: 250,
        width: 200,
        decoration: BoxDecoration(
          color: ColorUtils.primary,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Column(
          children: [
            Text("ID: ${userModel.id.toString()}"),
            const SizedBox(
              height: 40,
            ),
            Text("Name: ${userModel.name}"),
            const SizedBox(
              height: 40,
            ),
            Text("Birth date: ${userModel.birthDate}"),
          ],
        ),
      ),
    );
  }
}
