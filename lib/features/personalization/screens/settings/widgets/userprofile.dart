import 'package:flutter/material.dart';
import 'package:whatsapp_ui/common/widgets/user_container/user_container.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import 'package:whatsapp_ui/utils/constants/text_strings.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ///  --- User Profile ---
        UserProfileContainer(onTap: () {}, height: 55, width: 55),
        const SizedBox(
          width: PSizes.md,
        ),
    
        /// --- Title and subtitle ---
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  PTexts.firstCall,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  PTexts.quote,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: PColors.darkGrey),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: PSizes.spaceBtwSections / 1.2,
        ),
    
        /// --- Icons ---
        Row(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {},
              child: const Icon(
                Icons.qr_code,
                color: PColors.secondary,
              ),
            ),
            const SizedBox(
              width: PSizes.spaceBtwItems,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {},
              child: const Icon(
                Icons.arrow_drop_down_circle_outlined,
                color: PColors.secondary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
