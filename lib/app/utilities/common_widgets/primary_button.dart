import 'package:coffe_shop_ui_kit/app/data/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/constants/app_text.dart';
import '../style/app_text_style.dart';

class PrimaryButton extends StatelessWidget {
  final double? width;
  final String text;
  final Color? color;
  final Function() onTap;

  const PrimaryButton({
    super.key,
    this.width,
    required this.text,
    this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? Get.width * 0.8,
        height: 47,
        decoration: ShapeDecoration(
          color: color ?? AppColors.blackColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Center(
          child: Text(text,
              textAlign: TextAlign.center, style: AppTextStyle.textStyle14600),
        ),
      ),
    );
  }
}
