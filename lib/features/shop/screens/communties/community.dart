import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/common/widgets/appbar/main_appbar.dart';
import 'package:whatsapp_ui/features/personalization/screens/settings/settings.dart';
import 'package:whatsapp_ui/features/shop/screens/communties/widgets/container_button.dart';
import 'package:whatsapp_ui/features/shop/screens/communties/widgets/see_example.dart';
import 'package:whatsapp_ui/features/shop/screens/start_community/start_community.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/image_strings.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import 'package:whatsapp_ui/utils/constants/text_strings.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        heading: PTexts.communityTitle,
        isSearchIcon: false,
        items: [
          PopupMenuItem(
            child: TextButton(
              onPressed: () {
                Get.to(() => const SettingScreen());
              },
              child: Text(
                'Settings',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
        ],
        onCameraPress: () {},
        onSearch: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(PSizes.defaultSpace),
        child: Center(
          child: Column(
            children: [
              // --- Image ---
              const Image(
                image: AssetImage(PImages.communityImage),
              ),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              /// --- Title and Subtitle ---
              Text(
                PTexts.communityContentTitle,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: PSizes.spaceBtwItems - 10,
              ),
              const Text(
                PTexts.communityContentSubTitle,
                textAlign: TextAlign.center,
              ),

              /// --- TextButton (See example) ---
              SeeExampleTextButton(onTap: () {}, color: PColors.secondary,),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              /// --- Start Community Button ---
              ContainerButton(
                onTap: () {
                  Get.to(() => const StartCommunityScreen());
                },
                height: 40,
                width: 230,
                title: PTexts.startCommunity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
