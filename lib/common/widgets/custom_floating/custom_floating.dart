import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import 'package:whatsapp_ui/utils/helpers/helper_functions.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final VoidCallback onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Container(
      margin: const EdgeInsets.only(bottom: PSizes.lg, right: PSizes.lg),
      child: FloatingActionButton(
        backgroundColor: PColors.secondary,
        onPressed: onPressed,
        child: Icon(
          icon,
          color: isDark ?const Color.fromARGB(255, 4, 40, 36): PColors.grey,
        ),
      ),
    );
  }
}
