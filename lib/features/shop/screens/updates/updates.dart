import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/common/widgets/appbar/main_appbar.dart';
import 'package:whatsapp_ui/common/widgets/heading/heading_with_icon.dart';
import 'package:whatsapp_ui/common/widgets/user_container/user_container.dart';
import 'package:whatsapp_ui/features/shop/screens/communties/widgets/container_button.dart';
import 'package:whatsapp_ui/features/shop/screens/status_privacy/status_privacy.dart';
import 'package:whatsapp_ui/features/shop/screens/updates/widgets/cards.dart';
import 'package:whatsapp_ui/common/widgets/heading/title_subtitle_column.dart';
import 'package:whatsapp_ui/common/widgets/heading/status_popmenubutton.dart';
import 'package:whatsapp_ui/features/shop/screens/updates/widgets/update_floating_button.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import 'package:whatsapp_ui/utils/constants/text_strings.dart';

import '../../../personalization/screens/settings/settings.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
          heading: PTexts.updatetTitle,
          onCameraPress: () {},
          onSearch: () {},
          items: [
            PopupMenuItem(
              onTap: () {
                Get.to(() => const SettingScreen());
              },
              child: Text(
                'Settings',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// --- Status & Pop Menu Button
              TextHeadingAndPopMenuButton(
                popItemTitle: "Status Privacy",
                title: PTexts.status,
                isShowPopButton: true,
                onTap: () {
                  Get.to(() => const StatusPrivacyScreen());
                },
               isShowSecondPopItem: false,
              ),
              const SizedBox(
                height: PSizes.sm,
              ),

              /// -- Icon And My Status Text--
              Row(
                children: [
                  ///  User PROFILE Icon
                  UserProfileContainer(
                    height: 50,
                    width: 50,
                    onTap: () {},
                    icon: const Icon(
                      Icons.add_circle_rounded,
                      color: PColors.secondary,
                    ),
                  ),
                  const SizedBox(
                    width: PSizes.spaceBtwItems,
                  ),

                  /// Title and SubTitle
                  TitleAndSubTitleColumn(
                    title: PTexts.myStatusTitle,
                    subTitle: PTexts.myStatusSubTitle,
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: PSizes.sm,
              ),

              /// --- Viewed Status ---
              TextAndIconButtonHeading(
                heading: PTexts.viewedStatus,
                isShowIcon: true,
                onTap: () {},
              ),

              /// --- Muted Status ---
              TextAndIconButtonHeading(
                heading: PTexts.muteStatus,
                onTap: () {},
                isShowIcon: true,
              ),

              /// --- Divider ---
              const Divider(),

              /// --- Channels Heading and SubHeading---
              TextHeadingAndPopMenuButton(
                isShowSecondPopItem: true,
                onTap: () {},
                title: PTexts.channelTitle,
                isShowPopButton: true,
                popItemTitle: "Create channel",
                popItemTitle2: "Find channel",
              ),

              Text(
                PTexts.channelSubTitle,
                softWrap: true,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(color: PColors.darkGrey),
              ),

              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              /// --- Channels Card ---
              const Cards(),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              ContainerButton(
                onTap: () {},
                height: 43,
                width: 130,
                title: "Explore more",
                color: PColors.secondary,
              ),
              const SizedBox(height: PSizes.spaceBtwSections*2,)
            ],
          ),
        ),
      ),

      /// --- Floating Action Button ---
      floatingActionButton: Builder(
        builder: (BuildContext context) {
          return UpdateFloatingButton(
            onTap1: () {},
            onTap2: () {},
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
