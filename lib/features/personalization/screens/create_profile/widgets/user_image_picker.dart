import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/image_strings.dart';
import 'package:whatsapp_ui/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';

class UserImagePicker extends StatelessWidget {
  const UserImagePicker({
    super.key,
    required this.selectedImage,
    required this.takePicture,
  });

  final File? selectedImage;
  final void Function() takePicture;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        SizedBox(
          height: 150,
          width: 150,
          child: CircleAvatar(
            // backgroundImage: AssetImage(PImages.userProfile),
            backgroundImage: selectedImage != null
                ? Image.file(
                    selectedImage!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ).image
                : const AssetImage(PImages.emptyUserProfile),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: IconButton(
            splashColor: PColors.primary,
            splashRadius: 10,
            onPressed: () {
              takePicture();
            },
            icon: Icon(
              Icons.camera_alt,
              color: isDark ? PColors.white : PColors.black,
            ),
          ),
        ),
      ],
    );
  }
}
