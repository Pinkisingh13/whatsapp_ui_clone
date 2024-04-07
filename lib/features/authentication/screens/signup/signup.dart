import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/common/widgets/appbar/tappbar.dart';
import 'package:whatsapp_ui/common/widgets/pop_menu/pop_menu_widget.dart';
import 'package:whatsapp_ui/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:whatsapp_ui/features/authentication/screens/signup/widgets/signup_richtext.dart';
import 'package:whatsapp_ui/features/personalization/screens/create_profile/create_profile.dart';
import 'package:whatsapp_ui/features/shop/screens/communties/widgets/container_button.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import 'package:whatsapp_ui/utils/constants/text_strings.dart';
import 'package:whatsapp_ui/utils/helpers/helper_functions.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    final country = ['India', 'USA', 'Africa', 'Canada'];
    return Scaffold(
      appBar: PAppBar(
        isLeading: false,
        title: PTexts.enterYourPhoneNumber,
        actions: [
          PPopMenuWidget(popMenuItem: [
            PopupMenuItem(
              child: Text(
                "Link as companian device",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 16),
              ),
            ),
            PopupMenuItem(
              child: Text("Help",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 16)),
            ),
          ]),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace - 7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  // -- Text --
                  const SignupRichText(),
                  const SizedBox(
                    height: PSizes.spaceBtwSections,
                  ),

                  // --- Country Name ---
                  DropdownButton(
                    underline: Container(
                      height: 2,
                      color: PColors.primary,
                    ),
                    isExpanded: true,
                    padding: const EdgeInsets.symmetric(
                      horizontal: PSizes.defaultSpace * 2,
                    ),
                    // isDense: true,
                    // alignment: Alignment.center,
                    value: country[0],
                    items: country
                        .map((e) => DropdownMenuItem(
                              alignment: Alignment.center,
                              value: e,
                              child: Text(e),
                            ))
                        .toList(),
                    onChanged: (value) {},
                  ),
                  const SizedBox(
                    height: PSizes.spaceBtwItems - 10,
                  ),

                  // --- TextField ---
                  const SignupForm(),
                ],
              ),

              // Button
              ContainerButton(
                onTap: () {
                  Get.to(() => const CreateProfileScreen());
                },
                height: 43,
                width: 80,
                title: "Next",
                color: PColors.primary,
                textColor: isDark ? PColors.black : PColors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
