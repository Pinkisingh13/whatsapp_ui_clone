import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import 'package:whatsapp_ui/utils/helpers/helper_functions.dart';

class LeftSideChat extends StatelessWidget {
  const LeftSideChat({
    super.key,
    required this.text,
    required this.time,
  });
  final String text, time;
  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 8),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 19),
          decoration:  BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              topLeft: Radius.circular(0),
              bottomRight: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: isDark ? const Color.fromARGB(255, 43, 43, 43) : PColors.white,
          ),
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 2.7),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.,
            children: [
              Text(
                text,
              ),
              const SizedBox(
                width: PSizes.md,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  time,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color:  PColors.darkGrey),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
