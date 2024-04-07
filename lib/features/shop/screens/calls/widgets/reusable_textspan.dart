import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';

class ReusableTextSpan extends StatelessWidget {
  const ReusableTextSpan({
    super.key,
    required this.text1,
    required this.text2,
  });

  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.lock,
          size: 10,
          color:  PColors.darkGrey,
        ),
        const SizedBox(
          width: PSizes.xs,
        ),
        Align(
          alignment: Alignment.center,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: text1,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(color: PColors.darkGrey),
                ),
                TextSpan(
                  text: text2,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(color: PColors.secondary),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
