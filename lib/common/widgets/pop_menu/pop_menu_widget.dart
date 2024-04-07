import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/helpers/helper_functions.dart';

class PPopMenuWidget extends StatelessWidget {
  const PPopMenuWidget({
    super.key,
    required this.popMenuItem,
    this.minWidth = 190
  });
  final List<PopupMenuItem<dynamic>> popMenuItem;
  final double minWidth;
  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return PopupMenuButton(
     elevation: 20,
     clipBehavior: Clip.antiAlias,
      color: isDark ? const Color.fromARGB(255, 3, 20, 18) : PColors.white,
      position: PopupMenuPosition.under,
      constraints:  BoxConstraints(minWidth: minWidth),
      popUpAnimationStyle: AnimationStyle(
        curve: Curves.ease,
        duration: const Duration(milliseconds: 500),
        reverseCurve: Curves.easeInSine,
        reverseDuration: const Duration(milliseconds: 500),
      ),
      // color: Color.fromARGB(255, 4, 32, 28),
      itemBuilder: (context) {
        return popMenuItem;
      },
    );
  }
}
