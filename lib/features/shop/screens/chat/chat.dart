import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/common/widgets/appbar/main_appbar.dart';
import 'package:whatsapp_ui/common/widgets/chat_row/chat_row.dart';
import 'package:whatsapp_ui/features/personalization/screens/settings/settings.dart';
import 'package:whatsapp_ui/common/widgets/custom_floating/custom_floating.dart';
import 'package:whatsapp_ui/features/shop/screens/calls/widgets/reusable_textspan.dart';
import 'package:whatsapp_ui/features/shop/screens/chat_detail/chat_detail.dart';
import 'package:whatsapp_ui/features/shop/screens/linked_devices/linked_devices.dart';
import 'package:whatsapp_ui/features/shop/screens/starred_message/starred_message.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import 'package:whatsapp_ui/utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        color: PColors.secondary,
        heading: PTexts.appName,
        onCameraPress: () {},
        onSearch: () {},
        items: [
          PopupMenuItem(
            onTap: () {},
            child: Text(
              'New group',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          PopupMenuItem(
            onTap: () {},
            child: Text(
              'New broadcast',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          PopupMenuItem(
            onTap: () {
              Get.to(() => const LinkedDeviceScreen());
            },
            child: Text(
              'Linked devices',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          PopupMenuItem(
            onTap: () {
              Get.to(() => const StarredMessageScreen());
            },
            child: Text(
              'Starred messages',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          PopupMenuItem(
            onTap: () {},
            child: Text(
              'Payments',
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
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left:PSizes.defaultSpace,right:PSizes.defaultSpace, top: PSizes.md, bottom: PSizes.defaultSpace),
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              PChatRow(
                  title: PTexts.user1,
                  message: "Thank you 👍",
                  time: "now",
                  toOpenChat: () {
                    Get.to(() => const ChatDetailScreen(
                          title: PTexts.user1,
                        ));
                  },
                  toShowImage: () {}),
              PChatRow(
                  title: PTexts.user2,
                  message: "Hello",
                  time: "yesterday",
                  toOpenChat: () {
                    Get.to(() => const ChatDetailScreen(
                          title: PTexts.user2,
                        ));
                  },
                  toShowImage: () {}),
              PChatRow(
                  isShowIcon: false,
                  title: PTexts.user3,
                  message: "Take Care, bye good night, How Are you",
                  time: "9:08 pm",
                  toOpenChat: () {
                    Get.to(() => const ChatDetailScreen(
                          title: PTexts.user3,
                        ));
                  },
                  toShowImage: () {}),
              PChatRow(
                  title: PTexts.user4,
                  message: "Good Night",
                  time: "10:30 pm",
                  toOpenChat: () {
                    Get.to(() => const ChatDetailScreen(
                          title: PTexts.user4,
                        ));
                  },
                  toShowImage: () {}),
              PChatRow(
                  title: PTexts.user5,
                  message: "Take Care",
                  time: "9:08 pm",
                  toOpenChat: () {
                    Get.to(() => const ChatDetailScreen(
                          title: PTexts.user5,
                        ));
                  },
                  toShowImage: () {}),
              PChatRow(
                  title: PTexts.user6,
                  isShowIcon: false,
                  message: "Take Care",
                  time: "9:08 pm",
                  toOpenChat: () {
                    Get.to(() => const ChatDetailScreen(
                          title: PTexts.user6,
                        ));
                  },
                  toShowImage: () {}),
              PChatRow(
                  title: PTexts.user1,
                  message: "Take Care",
                  time: "9:08 pm",
                  toOpenChat: () {
                    Get.to(() => const ChatDetailScreen(
                          title: PTexts.user1,
                        ));
                  },
                  toShowImage: () {}),
              PChatRow(
                  title: PTexts.user1,
                  message: "Take Care",
                  time: "9:08 pm",
                  toOpenChat: () {
                    Get.to(() => const ChatDetailScreen(
                          title: PTexts.user1,
                        ));
                  },
                  toShowImage: () {}),
              PChatRow(
                  title: PTexts.user1,
                  message: "Take Care",
                  time: "9:08 pm",
                  toOpenChat: () {
                    Get.to(() => const ChatDetailScreen(
                          title: PTexts.user1,
                        ));
                  },
                  toShowImage: () {}),
              PChatRow(
                  title: PTexts.user1,
                  message: "Take Care",
                  time: "9:08 pm",
                  toOpenChat: () {
                    Get.to(() => const ChatDetailScreen(
                          title: PTexts.user1,
                        ));
                  },
                  toShowImage: () {}),
                  const SizedBox(height: PSizes.spaceBtwItems,),
                  Text(
                    textAlign: TextAlign.center,
                    PTexts.chatBottomText1, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 12),),

                  const SizedBox(height: PSizes.md,),
                  const Divider(),
                  const SizedBox(height: PSizes.sm,),
                  const ReusableTextSpan(text1: PTexts.chatBottomText2, text2: PTexts.chatBottomText3),

            ],
          ),
        ),
      ),
      floatingActionButton: CustomFloatingButton(
        onPressed: () {},
        icon: Icons.add_comment,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
