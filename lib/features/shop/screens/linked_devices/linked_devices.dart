import 'package:flutter/material.dart';
import 'package:whatsapp_ui/common/widgets/appbar/tappbar.dart';
import 'package:whatsapp_ui/features/shop/screens/communties/widgets/container_button.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import 'package:whatsapp_ui/utils/constants/text_strings.dart';
import 'package:whatsapp_ui/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';

class LinkedDeviceScreen extends StatelessWidget {
  const LinkedDeviceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const PAppBar(
        title: 'Linked devices',
        isCenterTitle: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                  isDark
                      ? 'assets/images/dark_linked_device.png'
                      : 'assets/images/light_linked_devices.png',
                ),
                width: 230,
                height: 200,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(children: [
                  TextSpan(
                    text: PTexts.useWhatsapp,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: PColors.darkGrey),
                  ),
                  TextSpan(
                    text: PTexts.learMore,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.blue),
                  )
                ]),
              ),
              const SizedBox(height: PSizes.spaceBtwSections,),
              // --- Button ---
              ContainerButton(onTap: (){}, height: 40, width: 270,title: PTexts.linkDevice,),
            ],
          ),
        ),
      ),
    );
  }
}
