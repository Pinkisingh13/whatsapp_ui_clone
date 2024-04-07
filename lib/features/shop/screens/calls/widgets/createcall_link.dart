import 'package:flutter/material.dart';
import 'package:whatsapp_ui/common/widgets/user_container/user_container.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import 'package:whatsapp_ui/utils/constants/text_strings.dart';

import '../../../../../common/widgets/heading/title_subtitle_column.dart';

class CreateCallLink extends StatelessWidget {
  const CreateCallLink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        UserProfileContainer(
          onTap: () {},
          icon: const Icon(
            Icons.link,
            size: PSizes.xl,
          ),
          height: PSizes.userCircleAvatarSize + 3,
          width: PSizes.userCircleAvatarSize + 3,
          showBgImage: false,
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
        ),
        const SizedBox(
          width: PSizes.sm,
        ),
        TitleAndSubTitleColumn(
          onTap: () {},
          title: PTexts.callTitle,
          subTitle: PTexts.callSubTitle,
        ),
      ],
    );
  }
}

