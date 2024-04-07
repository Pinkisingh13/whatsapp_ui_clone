import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import '../../constants/sizes.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();


// Light InputDecoration
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: PColors.darkGrey,
    suffixIconColor: PColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: PSizes.fontSizeMd, color: PColors.darkGrey, fontWeight: FontWeight.normal),
    hintStyle: const TextStyle().copyWith(fontSize: PSizes.fontSizeSm, color: PColors.darkGrey, fontWeight: FontWeight.normal),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: PColors.black.withOpacity(0.8)),
    border: const UnderlineInputBorder().copyWith(
      // borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.primary),
    ),
    enabledBorder: const UnderlineInputBorder().copyWith(
      // borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.primary),
    ),
    focusedBorder:const UnderlineInputBorder().copyWith(
      // borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.primary),
    ),
    errorBorder: const UnderlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.warning),
    ),
    focusedErrorBorder: const UnderlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: PColors.warning),
    ),
  );


// Dark InputDecoration
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: PColors.darkGrey,
    suffixIconColor: PColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: PSizes.fontSizeMd, color: PColors.darkGrey),
    hintStyle: const TextStyle().copyWith(fontSize: PSizes.fontSizeSm, color: PColors.darkGrey),
    floatingLabelStyle: const TextStyle().copyWith(color: PColors.darkGrey.withOpacity(0.8)),
    border: const UnderlineInputBorder().copyWith(
      // borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.primary),
    ),
    enabledBorder: const UnderlineInputBorder().copyWith(
      // borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.primary),
    ),
    focusedBorder: const UnderlineInputBorder().copyWith(
      // borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.primary),
    ),
    errorBorder: const UnderlineInputBorder().copyWith(
      // borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PColors.warning),
    ),
    focusedErrorBorder: const UnderlineInputBorder().copyWith(
      // borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: PColors.warning),
    ),
  );
}
