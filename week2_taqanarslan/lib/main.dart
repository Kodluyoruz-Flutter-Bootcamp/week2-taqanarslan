import 'package:flutter/material.dart';
import 'package:week2_taqanarslan/ui/add_user/add_user_view.dart';
import 'package:week2_taqanarslan/ui/home/home_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Week2',
      home: HomeView(),
    );
  }
}
