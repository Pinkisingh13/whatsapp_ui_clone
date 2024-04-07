import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/text_strings.dart';

class SignupRichText extends StatelessWidget {
  const SignupRichText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          const TextSpan(text: PTexts.verifyNumberString),
          TextSpan(
            text: PTexts.whatsMyNumber,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .apply(color: Colors.blue,),
          ),
        ],
      ),
    );
  }
}

