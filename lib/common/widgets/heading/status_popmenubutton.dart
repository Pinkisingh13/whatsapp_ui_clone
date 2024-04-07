import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/helpers/helper_functions.dart';

class TextHeadingAndPopMenuButton extends StatelessWidget {
  const TextHeadingAndPopMenuButton({
    super.key,
    required this.onTap,
    required this.isShowPopButton,
    this.button = const SizedBox(),
    required this.title,
    required this.popItemTitle,
    this.popItemTitle2, 
    required this.isShowSecondPopItem,
     
  });

  final VoidCallback onTap;
  final bool isShowPopButton;
  final bool isShowSecondPopItem;
  final Widget button;
  final String title, popItemTitle;
  final String? popItemTitle2;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        title,
        // PTexts.status,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      isShowPopButton
          ? PopupMenuButton(
              color:
                  isDark ? const Color.fromARGB(255, 3, 20, 18) : PColors.white,
              constraints: const BoxConstraints(minWidth: 190),
              popUpAnimationStyle: AnimationStyle(
                curve: Curves.ease,
                duration: const Duration(milliseconds: 500),
                reverseCurve: Curves.easeInSine,
                reverseDuration: const Duration(milliseconds: 500),
              ),
              position: PopupMenuPosition.under,
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    onTap: onTap,
                    child: Text(
                      popItemTitle,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                    if (isShowSecondPopItem) 
                      PopupMenuItem(
                        onTap: onTap,
                        child: Text(
                          popItemTitle2 ?? "",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                    
                  
                ];
              },
            )
          : button,
    ]);
  }
}
