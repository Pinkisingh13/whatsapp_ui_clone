import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/common/widgets/appbar/main_appbar.dart';
import 'package:whatsapp_ui/features/personalization/screens/settings/settings.dart';
import 'package:whatsapp_ui/features/shop/screens/calls/widgets/row_useravatar_text.dart';
import 'package:whatsapp_ui/common/widgets/custom_floating/custom_floating.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import 'package:whatsapp_ui/utils/constants/text_strings.dart';
import 'widgets/createcall_link.dart';
import 'widgets/reusable_textspan.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        items: [
          PopupMenuItem(
            onTap: () {},
            child: Text(
              'Clear call log',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          PopupMenuItem(
            onTap: () {
              Get.to(() => const SettingScreen());
            },
            child: Text(
              'Settings',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ],
        onCameraPress: () {},
        onSearch: () {},
        heading: PTexts.calls,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CreateCallLink(),
              const SizedBox(
                height: PSizes.spaceBtwSections,
              ),
              Text(
                PTexts.recent,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                height: PSizes.md,
              ),
              RowWithUserAvatarAndText(
                title: PTexts.firstCall,
                callTime: "yesterday 12:30 pm",
                onCallDetails: () {},
                onTapCall: () {},
              ),
              const SizedBox(
                height: PSizes.md,
              ),
              RowWithUserAvatarAndText(
                title: PTexts.secondCall,
                callTime: "yesterday 12:30 pm",
                onCallDetails: () {},
                onTapCall: () {},
              ),
              const SizedBox(
                height: PSizes.md,
              ),

              RowWithUserAvatarAndText(
                title: PTexts.thirdCall,
                callTime: "yesterday 12:30 pm",
                onCallDetails: () {},
                onTapCall: () {},
              ),

              const SizedBox(
                height: PSizes.md,
              ),
              RowWithUserAvatarAndText(
                  title: PTexts.thirdCall,
                  callTime: "yesterday 12:30 pm",
                  onCallDetails: () {},
                  onTapCall: () {}),
              const SizedBox(
                height: PSizes.md,
              ),
              const Divider(),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              /// --- Text ---
              const ReusableTextSpan(text1: 'Your personal calls are ', text2: PTexts.chatBottomText3,),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFloatingButton(onPressed: (){}, icon: Icons.add_ic_call),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

    );
  }
}

