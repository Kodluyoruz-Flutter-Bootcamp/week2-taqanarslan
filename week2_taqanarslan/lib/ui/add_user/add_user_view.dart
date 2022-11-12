import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:week2_taqanarslan/component/button/main_button.dart';
import 'package:week2_taqanarslan/service/utils.dart';
import 'package:week2_taqanarslan/ui/add_user/add_user_viewmodel.dart';
import 'package:week2_taqanarslan/ui/home/user_model.dart';

class AddUserView extends StatelessWidget {
  const AddUserView({super.key});

  @override
  Widget build(BuildContext context) {
    AddUserModelView modelView = AddUserModelView();
    return Scaffold(
      backgroundColor: ColorUtils.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                controller: modelView.nameCont,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[a-zA-Z ]')),
                ],
                decoration: InputDecoration(hintText: "Name", border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
              ),
            ),
            SizedBox(height: PaddingUtils.huge),
            SizedBox(
              width: 300,
              child: TextField(
                controller: modelView.birthDateCont,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9/]')),
                ],
                decoration: InputDecoration(hintText: "Birth Date (dd/mm/yyyy)", border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
              ),
            ),
            SizedBox(height: PaddingUtils.huge),
            MainButton(
              title: "Ekle",
              onTap: () => modelView.buttonFunction(context),
            )
          ],
        ),
      ),
    );
  }
}
