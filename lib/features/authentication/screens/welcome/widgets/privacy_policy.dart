import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/text_strings.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      
      TextSpan(
        children: [
          TextSpan(
            text: PTexts.readOur,
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: PColors.darkGrey,

                ),
          ),
          TextSpan(
            text: PTexts.privacyPolicy,
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: PColors.tertiary,
                ),
          ),
          TextSpan(
            text: PTexts.tapAgreeAndContinue,
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: PColors.darkGrey,
                ),
          ),
          TextSpan(
            text: PTexts.termsOfUse,
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: PColors.tertiary,
                ),
          ),
        ],
      ),
    );
  }
}
