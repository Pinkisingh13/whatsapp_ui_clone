import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_ui/bottom_navbar.dart';
import 'package:whatsapp_ui/common/styles/spacing_style.dart';
import 'package:whatsapp_ui/common/widgets/appbar/tappbar.dart';
import 'package:whatsapp_ui/features/personalization/screens/create_profile/widgets/create_profile_form.dart';
import 'package:whatsapp_ui/features/personalization/screens/create_profile/widgets/user_image_picker.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import 'package:whatsapp_ui/utils/constants/text_strings.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({super.key});

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  File? _selectedImage;
  void _takePicture() async {
    final imagePicker = ImagePicker();
    final pickedImage =
        await imagePicker.pickImage(source: ImageSource.gallery, maxWidth: 200);

    if (pickedImage == null) return;
    setState(() {
      _selectedImage = File(pickedImage.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PAppBar(
        title: PTexts.createYourProfile,
        isLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(() => const NavigationMenu());
            },
            icon: const Icon(Icons.check),
          )
        ],
      ),
      body: Padding(
        padding: PSpacingStyle.paddingWithAppBarHeight,
        child: Center(
          child: Column(
            children: [
              //  --- ImagePicker ---
              UserImagePicker(
                selectedImage: _selectedImage,
                takePicture: _takePicture,
              ),
              const SizedBox(
                height: PSizes.spaceBtwSections * 2,
              ),

              // -- TextField --
              const CreateProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}
