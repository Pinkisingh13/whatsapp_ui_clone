import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/common/widgets/pop_menu/pop_menu_widget.dart';
import 'package:whatsapp_ui/common/widgets/user_container/user_container.dart';
import 'package:whatsapp_ui/features/shop/screens/chat_detail/widgets/other_chat.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/image_strings.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import 'package:whatsapp_ui/utils/helpers/helper_functions.dart';

import 'widgets/left_side_chat.dart';
import 'widgets/right_side_chat.dart';

class ChatDetailScreen extends StatelessWidget {
  const ChatDetailScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDark ?  PColors.primaryBackground : PColors.white,
        automaticallyImplyLeading: false,
        elevation: 20,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_rounded,
                color: isDark ? PColors.white : PColors.black,
              ),
            ),
            UserProfileContainer(onTap: () {}, height: 38, width: 38),
            const SizedBox(
              width: PSizes.sm,
            ),
            Text(
              overflow: TextOverflow.ellipsis,
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.normal, fontSize: 18),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          PPopMenuWidget(
            popMenuItem: [
              PopupMenuItem(
                child: Text(
                  "view contacts",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              PopupMenuItem(
                child: Text(
                  "Media, links, and docs",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              PopupMenuItem(
                child: Text(
                  "Search",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              PopupMenuItem(
                child: Text(
                  "Disappearing messages",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              PopupMenuItem(
                child: Text(
                  "Wallpapers",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              PopupMenuItem(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "More",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_right),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage(isDark ? PImages.chatBgDark : PImages.chatBgLight),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                // itemCount: 5,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RightSideChat(text: "Hello", time: "2 pm"),
                        LeftSideChat(text: "Hello", time: "2 pm"),
                        SizedBox(
                          height: PSizes.sm,
                        ),
                        OtherChat(text: "How are you?", time: "2:08 pm",),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

