import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/helpers/helper_functions.dart';

class CustomizeIconButton extends StatelessWidget {
  const CustomizeIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
        color: isDark ? PColors.white : PColors.dark,
      ),
    );
  }
}
