import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';

class UpdateFloatingButton extends StatelessWidget {
  const UpdateFloatingButton({
    super.key, required this.onTap1, required this.onTap2, 
  });
  final void Function() onTap1, onTap2;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: PSizes.lg, right: PSizes.lg),
          child: FloatingActionButton(
            heroTag: const Key("First"),
            backgroundColor: PColors.darkerGrey,
            mini: true,
            onPressed: onTap1,
            child: const Icon(
              Icons.create,
              color: PColors.white,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: PSizes.lg, right: PSizes.lg),
          child: FloatingActionButton(
            heroTag: const Key("Second"),
            backgroundColor: PColors.secondary,
            onPressed: onTap2,
            child: const Icon(
              Icons.camera_alt_rounded,
              color: PColors.dark,
            ),
          ),
        ),
      ],
    );
  }
}
