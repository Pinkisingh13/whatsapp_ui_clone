import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';

class TextAndIconButtonHeading extends StatelessWidget {
  const TextAndIconButtonHeading({
    super.key,
    required this.heading,
    required this.onTap,
    required this.isShowIcon,
    this.iconData,
  });

  final String heading;
  final VoidCallback onTap;
  final bool isShowIcon;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .apply(color: PColors.darkGrey),
        ),
        IconButton(
                onPressed: onTap,
                icon: Icon(isShowIcon ? Icons.arrow_drop_down : iconData),
              )
           
      ],
    );
  }
}
