import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    super.key,
    required this.onTap,
    required this.height,
    required this.width,
    required this.title,
    this.color,
    this.textColor,
  });
  final VoidCallback onTap;
  final double height, width;
  final String title;
  final Color? color, textColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: PColors.white,
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color ?? PColors.secondary , borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: textColor ?? PColors.black),
        ),
      ),
    );
  }
}
