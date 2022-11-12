import 'package:flutter/material.dart';
import 'package:week2_taqanarslan/service/utils.dart';

class MainButton extends StatelessWidget {
  final Color? color;
  final String? title;
  final Function()? onTap;
  final double? height;
  final double? width;

  const MainButton({super.key, this.color, this.title, this.onTap, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 40,
        width: width ?? 100,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(width ?? 50), color: color ?? ColorUtils.territary),
        child: Center(
          child: Text(
            title ?? "",
            style: TextStyleUtils.primary.copyWith(color: ColorUtils.primary),
          ),
        ),
      ),
    );
  }
}
