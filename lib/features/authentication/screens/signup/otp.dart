// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:whatsapp_ui/common/widgets/appbar/tappbar.dart';
// import 'package:whatsapp_ui/features/personalization/screens/create_profile/create_profile.dart';
// import 'package:whatsapp_ui/utils/constants/sizes.dart';
// import 'package:whatsapp_ui/utils/constants/text_strings.dart';

// class OtpScreen extends StatelessWidget {
//   const OtpScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const PAppBar(title: PTexts.otpTextTitle),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(PSizes.defaultSpace),
//           child: Column(
//             children: [
//               const SizedBox(
//                 height: PSizes.spaceBtwSections * 7,
//               ),
//               SizedBox(
//                 width: PSizes.buttonWidth,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Get.to(() => const CreateProfileScreen());
//                   },
//                   child: const Text(PTexts.verify),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
