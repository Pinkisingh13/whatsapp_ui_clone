import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/image_strings.dart';

class UserProfileContainer extends StatelessWidget {
  const UserProfileContainer({
    super.key,
    required this.onTap,
    this.icon,
    required this.height,
    required this.width,
    this.showBgImage = true,
    this.bottom = -13,
    this.right = -13,
    this.top,
    this.left,
    this.showIcon = true,
  });

  final VoidCallback onTap;
  final Widget? icon;
  final double? height, width, bottom, right, top, left;
  final bool showBgImage;
  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: height,
          width: width,
          child: CircleAvatar(
            backgroundImage:
                showBgImage ? const AssetImage(PImages.userImage) : null,
            backgroundColor: !showBgImage ? PColors.secondary : null,
          ),
        ),
        Positioned(
          bottom: bottom,
          right: right,
          top: top,
          left: left,
          child: showIcon && icon != null ? IconButton(
            onPressed: onTap,
            icon: icon!,
            color: PColors.black,
          ) : const SizedBox()
        ),
      ],
    );
  }
}
