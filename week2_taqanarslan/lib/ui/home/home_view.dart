import 'package:flutter/material.dart';
import 'package:week2_taqanarslan/component/button/main_button.dart';
import 'package:week2_taqanarslan/service/utils.dart';
import 'package:week2_taqanarslan/ui/home/home_viewmodel.dart';
import 'package:week2_taqanarslan/ui/home/user_item.dart';
import 'package:week2_taqanarslan/ui/home/user_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeViewModel viewModel = HomeViewModel();
  List userList = [];
  @override
  void initState() {
    userList = UserOperations.instance.getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.primary,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Container(
              height: (MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.top + MediaQuery.of(context).padding.bottom)) * 0.85,
              margin: EdgeInsets.symmetric(horizontal: PaddingUtils.medium),
              child: ListView.builder(
                itemCount: userList.length,
                itemBuilder: (context, index) {
                  return UserItem(userModel: userList[index]);
                },
              ),
            ),
            Container(
              height: (MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.top + MediaQuery.of(context).padding.bottom)) * 0.15,
              child: MainButton(
                title: "Add User",
                onTap: () => viewModel.buttonOnTap(context),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
