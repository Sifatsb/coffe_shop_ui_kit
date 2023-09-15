import 'package:coffe_shop_ui_kit/app/data/constants/app_text.dart';
import 'package:coffe_shop_ui_kit/app/utilities/extensions/widget.extensions.dart';
import 'package:coffe_shop_ui_kit/app/utilities/style/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utilities/common_widgets/primary_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/background_image.png'),
              // Your image path
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              150.verticalSpacing,
              const Text(
                AppText.coffeeShop,
                textAlign: TextAlign.center,
                style: AppTextStyle.textStyle36,
              ),
              40.verticalSpacing,
              const Text(
                AppText.enjoyDrink,
                textAlign: TextAlign.center,
                style: AppTextStyle.textStyle16,
              ),
              40.verticalSpacing,
              PrimaryButton(text: AppText.shopNow, onTap: () {
                print('object');
              },),
            ],
          ),
        ),
      ),
    );
  }
}
