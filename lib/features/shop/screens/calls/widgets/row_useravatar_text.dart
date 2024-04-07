import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:whatsapp_ui/common/widgets/heading/title_subtitle_column.dart';
import 'package:whatsapp_ui/common/widgets/user_container/user_container.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';

class RowWithUserAvatarAndText extends StatelessWidget {
  const RowWithUserAvatarAndText({
    super.key,
    required this.onTapCall,
    required this.onCallDetails,
    required this.callTime,
    required this.title,
  });
  final VoidCallback onTapCall, onCallDetails;
  final String callTime, title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        UserProfileContainer(
            onTap: () {},
            showIcon: false,
            height: PSizes.userCircleAvatarSize,
            width: PSizes.userCircleAvatarSize),
        const SizedBox(
          width: PSizes.md,
        ),
        TitleAndSubTitleColumn(
          isShowIcon: true,
          onTap: onCallDetails,
          title: title,
          subTitle: callTime,
        ),
        const SizedBox(width: PSizes.appBarHeight ),
        IconButton(
          onPressed: onTapCall,
          icon: const Icon(
            Iconsax.call,
            color: PColors.secondary,
          ),
        ),
      ],
    );
  }
}
