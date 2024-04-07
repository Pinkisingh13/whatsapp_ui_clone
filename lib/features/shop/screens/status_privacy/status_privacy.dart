import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_ui/common/widgets/appbar/tappbar.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import 'package:whatsapp_ui/utils/constants/text_strings.dart';

class StatusPrivacyScreen extends StatelessWidget {
  const StatusPrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PAppBar(
        title: PTexts.statusPrivacy,
        isCenterTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// title
              Text(
                PTexts.whoCanSee,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: PColors.darkGrey,
                    ),
              ),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              /// Radio Buttons
              const StatusRadio(),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              /// --- Text ---
              Text(
                PTexts.statusText,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: PColors.darkGrey, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatusRadio extends StatelessWidget {
  const StatusRadio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(StatusPrivacyController());
    return Column(
      children: [
        Obx(
          () => RadioListTile(
            value: 1,
            groupValue: controller.selectedRadio.value,
            onChanged: (val) {
              val is int ? controller.setSelectedRadio(val) : null;
            },
            title: Text(
              PTexts.statusOption1,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.normal),
            ),
            activeColor: PColors.secondary,
          ),
        ),
        Obx(
          () => RadioListTile(
            secondary: Text(
              PTexts.excluded,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: PColors.secondary),
            ),
            value: 2,
            groupValue: controller.selectedRadio.value,
            activeColor: PColors.secondary,
            onChanged: (val) {
              val is int ? controller.setSelectedRadio(val) : null;
            },
            title: Text(PTexts.statusOption2,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.normal)),
          ),
        ),
        Obx(
          () => RadioListTile(
            secondary: Text(
              PTexts.included,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: PColors.secondary),
            ),
            value: 3,
            groupValue: controller.selectedRadio.value,
            activeColor: PColors.secondary,
            onChanged: (val) {
              val is int ? controller.setSelectedRadio(val) : null;
            },
            title: Text(PTexts.statusOption3,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.normal)),
          ),
        ),
      ],
    );
  }
}

// Controller
class StatusPrivacyController extends GetxController {
  final RxInt selectedRadio = 0.obs;

  setSelectedRadio(int? val) {
    selectedRadio.value = val!;
  }
}
