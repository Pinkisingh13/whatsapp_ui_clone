import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';

class SettingOption extends StatelessWidget {
  const SettingOption({
    super.key,
    required this.title,
    this.subTitle,
    required this.icon,
    required this.onTap,
    this.showSubTitle = true,
  });

  final String? title, subTitle;
  final IconData icon;
  final VoidCallback onTap;
  final bool showSubTitle;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            color: PColors.darkGrey,
            size: 25,
          ),
          const SizedBox(
            width: PSizes.spaceBtwItems * 1.2,
          ),
          Padding(
            padding: const EdgeInsets.only(right: PSizes.spaceBtwSections),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: PSizes.xs,
                ),
                SizedBox(
                  width: 200,
                  child: showSubTitle
                      ? Text(
                          softWrap: true,
                          subTitle!,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  color: PColors.darkGrey,
                                  fontWeight: FontWeight.normal),
                        )
                      : const SizedBox(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
