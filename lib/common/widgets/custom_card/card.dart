import 'package:flutter/material.dart';
import 'package:whatsapp_ui/common/widgets/user_container/user_container.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import 'package:whatsapp_ui/utils/helpers/helper_functions.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.title,
    required this.onTap,
    required this.toFollow,
  });

  final String title;
  final VoidCallback onTap;
  final VoidCallback toFollow;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return SizedBox(
      width: 150,
      child: Card(
        color: isDark ? PColors.primaryBackground : PColors.white,
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            color: PColors.grey,
            width: 0.3,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: PSizes.md,
            left: PSizes.md,
            right: PSizes.md,
          ),
          child: Column(
            children: [
              UserProfileContainer(
                height: 60,
                width: 60,
                onTap: onTap,
                icon: const Icon(
                  Icons.verified,
                  color: PColors.secondary,
                ),
              ),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              // Text
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),
              GestureDetector(
                onTap: toFollow,
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: isDark
                        ? const Color.fromARGB(255, 51, 240, 120)
                            .withOpacity(0.2)
                        : const Color.fromRGBO(142, 255, 145, 1)
                            .withOpacity(0.4),
                  ),
                  child: Text(
                    "Follow",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: isDark
                              ? const Color.fromARGB(255, 77, 247, 139)
                                  .withOpacity(0.9)
                              : PColors.primary,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
