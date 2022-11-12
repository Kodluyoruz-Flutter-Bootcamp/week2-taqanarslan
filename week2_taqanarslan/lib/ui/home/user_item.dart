import 'package:flutter/material.dart';
import 'package:week2_taqanarslan/component/popup/detail_popup.dart';
import 'package:week2_taqanarslan/service/utils.dart';
import 'package:week2_taqanarslan/ui/home/user_model.dart';

class UserItem extends StatelessWidget {
  final UserModel userModel;
  const UserItem({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return DetailPopup(
              userModel: userModel,
            );
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: ColorUtils.secondary,
        ),
        margin: EdgeInsets.only(top: 10),
        height: 60,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
              "Name: " + userModel.name + "  ID: " + userModel.id.toString(),
              style: TextStyleUtils.primary,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
