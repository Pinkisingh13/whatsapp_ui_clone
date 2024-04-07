import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:whatsapp_ui/common/widgets/pop_menu/pop_menu_widget.dart';
import 'package:whatsapp_ui/features/authentication/screens/signup/signup.dart';
import 'package:whatsapp_ui/features/authentication/screens/welcome/widgets/privacy_policy.dart';
import 'package:whatsapp_ui/features/shop/screens/communties/widgets/container_button.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/image_strings.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import 'package:whatsapp_ui/utils/constants/text_strings.dart';
import 'package:whatsapp_ui/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/appbar/tappbar.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
  final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: PAppBar(
        title: '',
        isLeading: false,
        actions: [
          PPopMenuWidget(
            popMenuItem: [
              PopupMenuItem(
                onTap: () {},
                child: const Text("Help"),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            children: [
              // Image
               Image(
                image: AssetImage(
                  isDark ? PImages.welcomeImageDark : PImages.welcomeImageLight,
                ),
                height: 280,
                width: 280,
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),
              // Title
              Text(PTexts.welcome,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              // Privacy Policy
              const Expanded(child: PrivacyPolicy()),

              // --- Continue Button ---
              ContainerButton(
                onTap: () {
                  Get.to(() => const Signup());
                },
                height: 38,
                width: THelperFunctions.screenWidth(),
                title: PTexts.agreeAndContinue,
                color: PColors.primary,
                textColor: PColors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
