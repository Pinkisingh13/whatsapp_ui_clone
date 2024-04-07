import 'package:flutter/material.dart';
import '../../../../../utils/constants/text_strings.dart';

class SeeExampleTextButton extends StatelessWidget {
  const SeeExampleTextButton({
    super.key,
    required this.onTap,
    required this.color,
  });

  final VoidCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            PTexts.communityExample,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color:color),
          ),
           Icon(
            Icons.arrow_forward_ios_rounded,
            size: 10,
            color: color,
          ),
        ],
      ),
    );
  }
}
