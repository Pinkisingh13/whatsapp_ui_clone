import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:whatsapp_ui/common/widgets/customize_iconbutton/customize_icon.dart';
import 'package:whatsapp_ui/common/widgets/pop_menu/pop_menu_widget.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/device/device_utility.dart';
import 'package:whatsapp_ui/utils/helpers/helper_functions.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
    this.items,
    this.onCameraPress,
    required this.heading,
    this.onSearch,
    this.isSearchIcon = true,
    this.isCameraIcon = true,
    this.isPopMenu = true,
    this.leading = false,
    this.color = PColors.black,
  });
  final VoidCallback? onCameraPress;
  final VoidCallback? onSearch;
  final List<PopupMenuItem<dynamic>>? items;
  final String heading;
  final Color color;
  final bool isSearchIcon, isCameraIcon, isPopMenu, leading;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return AppBar(
      elevation: 20,
     shape: const Border(
    bottom: BorderSide(
      color: PColors.darkGrey,
      width: 0.20,
    )
  ),
      centerTitle: false,
      scrolledUnderElevation: 10,
      backgroundColor: isDark ? PColors.primaryBackground : null,
      title: Text(
        heading,
        style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .apply(color: isDark ? PColors.white : color),
      ),
      // automaticallyImplyLeading: leading,
      leading: leading
          ? IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Iconsax.arrow_left,
                color: isDark ? PColors.white : PColors.dark,
              ),
            )
          : null,
      actions: [
        isCameraIcon
            ? CustomizeIconButton(
                onTap: onCameraPress ?? () {},
                icon: Icons.camera_alt_outlined,
              )
            : const SizedBox(),
        isSearchIcon
            ? CustomizeIconButton(
                icon: Icons.search,
                onTap: onSearch ?? () {},
              )
            : const SizedBox(),

        // --- Pop Menu Buttons ---
        isPopMenu ? PPopMenuWidget(popMenuItem: items ?? []) : const SizedBox(),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}


            // PopupMenuItem(
            //   child: TextButton(
            //     onPressed: () {},
            //     child: Text(
            //       'New group',
            //       style: Theme.of(context).textTheme.titleLarge,
            //     ),
            //   ),
            // ),
            // PopupMenuItem(
            //   child: TextButton(
            //     onPressed: () {},
            //     child: Text(
            //       'New broadcast',
            //       style: Theme.of(context).textTheme.titleLarge,
            //     ),
            //   ),
            // ),
            // PopupMenuItem(
            //   child: TextButton(
            //     onPressed: () {},
            //     child: Text(
            //       'Linked devices',
            //       style: Theme.of(context).textTheme.titleLarge,
            //     ),
            //   ),
            // ),
            // PopupMenuItem(
            //   child: TextButton(
            //     onPressed: () {},
            //     child: Text(
            //       'Starred messages',
            //       style: Theme.of(context).textTheme.titleLarge,
            //     ),
            //   ),
            // ),
            // PopupMenuItem(
            //   child: TextButton(
            //     onPressed: () {},
            //     child: Text(
            //       'Payments',
            //       style: Theme.of(context).textTheme.titleLarge,
            //     ),
            //   ),
            // ),
            // PopupMenuItem(
            //   child: TextButton(
            //     onPressed: () {},
            //     child: Text(
            //       'Settings',
            //       style: Theme.of(context).textTheme.titleLarge,
            //     ),
            //   ),
            // ),