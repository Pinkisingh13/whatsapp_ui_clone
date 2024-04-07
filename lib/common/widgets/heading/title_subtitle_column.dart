import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';

class TitleAndSubTitleColumn extends StatelessWidget {
  const TitleAndSubTitleColumn({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
    this.isShowIcon = false,
  });

  final String title, subTitle;
  final VoidCallback onTap;
  final bool isShowIcon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: PSizes.xs,
          ),
          Row(
            children: [
              isShowIcon
                  ? const Icon(
                      Icons.call_missed,
                      size: 15,
                      color: Colors.red,
                    )
                  : const SizedBox(),
               Text(
                  overflow: TextOverflow.ellipsis,
                  subTitle,
                  softWrap: true,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: PColors.darkGrey),
                ),
              
            ],
          ),
        ],
      ),
    );
  }
}
