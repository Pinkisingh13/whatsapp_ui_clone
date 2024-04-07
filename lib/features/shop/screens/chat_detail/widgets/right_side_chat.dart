import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class RightSideChat extends StatelessWidget {
  const RightSideChat({
    super.key, required this.text, required this.time,
  });
  final String text, time;
  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 6),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 13),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              topRight: Radius.circular(0),
            ),
            color: isDark ? PColors.primary : const Color.fromRGBO(142, 255, 145, 1)
                            .withOpacity(0.4),
          ),
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 2.7),
          child: Row(
     
            children: [
              Expanded(
                child: Text(
                  text,
                ),
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
                      .copyWith(color: PColors.darkGrey),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 4),
                child: Icon(
                  Icons.check,
                  size: 14,
                  color: PColors.darkGrey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
