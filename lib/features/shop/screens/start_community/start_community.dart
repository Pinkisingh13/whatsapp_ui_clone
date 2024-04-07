import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/features/shop/screens/communties/widgets/container_button.dart';
import 'package:whatsapp_ui/features/shop/screens/communties/widgets/see_example.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/image_strings.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import 'package:whatsapp_ui/utils/constants/text_strings.dart';
import 'package:whatsapp_ui/utils/device/device_utility.dart';

class StartCommunityScreen extends StatelessWidget {
  const StartCommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.close,
            color: PColors.darkGrey,
            size: 26,
          ),
        ),
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
                height: PSizes.spaceBtwSections,
              ),

              /// --- Title and Subtitle ---
              Text(
                PTexts.createCommunityTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),
               Text(
                PTexts.createCommunitySubTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: PColors.darkGrey, fontWeight: FontWeight.normal, fontSize: 16),
              ),

              /// --- TextButton (See example) ---
              SeeExampleTextButton(onTap: () {}, color: Colors.blue,),
               SizedBox(
                height: TDeviceUtils.getScreenHeight()/4.2,
              ),

              /// --- Start Community Button ---
              ContainerButton(
                onTap: () {
                  // Get.to(() => const StartCommunityScreen());
                },
                height: 42,
                width: double.infinity,
                title: PTexts.startCommunity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
