import 'package:flutter/material.dart';
import 'package:whatsapp_ui/common/widgets/appbar/main_appbar.dart';
import 'package:whatsapp_ui/features/personalization/screens/settings/widgets/settingoption.dart';
import 'package:whatsapp_ui/features/personalization/screens/settings/widgets/userprofile.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import 'package:whatsapp_ui/utils/constants/text_strings.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        heading: PTexts.settingsHeading,
        isCameraIcon: false,
        isPopMenu: false,
        leading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            children: [
              /// User Icon & Title, SubTitle, Icons
              const UserProfile(),
              const SizedBox(
                height: PSizes.md,
              ),
              const Divider(),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),

              /// --- Setting Options ---
              SettingOption(
                onTap: () {},
                icon: Icons.key,
                title: PTexts.settingOptionTitle1,
                subTitle: PTexts.settingOptionSubTitle1,
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),
              SettingOption(
                onTap: () {},
                icon: Icons.lock_outline_rounded,
                title: PTexts.settingOptionTitle2,
                subTitle: PTexts.settingOptionSubTitle2,
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),

              SettingOption(
                onTap: () {},
                icon: Icons.face,
                title: PTexts.settingOptionTitle3,
                subTitle: PTexts.settingOptionSubTitle3,
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),

              SettingOption(
                onTap: () {},
                icon: Icons.chat,
                title: PTexts.settingOptionTitle4,
                subTitle: PTexts.settingOptionSubTitle4,
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),

              SettingOption(
                onTap: () {},
                icon: Icons.notifications_none_rounded,
                title: PTexts.settingOptionTitle5,
                subTitle: PTexts.settingOptionSubTitle5,
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),

              SettingOption(
                onTap: () {},
                icon: Icons.sync,
                title: PTexts.settingOptionTitle6,
                subTitle: PTexts.settingOptionSubTitle6,
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),

              SettingOption(
                onTap: () {},
                icon: Icons.language,
                title: PTexts.settingOptionTitle7,
                subTitle: PTexts.settingOptionSubTitle7,
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),

              SettingOption(
                onTap: () {},
                icon: Icons.help_outline_rounded,
                title: PTexts.settingOptionTitle8,
                subTitle: PTexts.settingOptionSubTitle8,
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),

              SettingOption(
                onTap: () {},
                icon: Icons.group_outlined,
                title: PTexts.settingOptionTitle9,
                showSubTitle: false,
                // subTitle: PTexts.settingOptionSubTitle9,
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),
              Text(
                "from",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: PColors.darkGrey, fontWeight: FontWeight.normal),
              ),

              Text(
                "Meta",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: PColors.grey, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

