import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/device/device_utility.dart';
import 'package:whatsapp_ui/utils/helpers/helper_functions.dart';

class PAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PAppBar(
      {super.key,
      required this.title,
      this.isLeading = true,
      this.actions,
      this.isCenterTitle = true});
  final String title;
  final bool isLeading, isCenterTitle;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(fontWeight: FontWeight.normal, color: isDark ?PColors.white : PColors.primary),
      ),
      centerTitle: isCenterTitle,
      automaticallyImplyLeading: false,
      leading: isLeading
          ? IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Iconsax.arrow_left,
                color: isDark ? PColors.white : PColors.dark,
              ),
            )
          : const SizedBox(),
      actions: actions,
      elevation: 10,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
