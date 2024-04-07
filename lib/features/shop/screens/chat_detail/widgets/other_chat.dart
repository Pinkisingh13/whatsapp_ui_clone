import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OtherChat extends StatelessWidget {
  const OtherChat({
    super.key, required this.text, required this.time,
  });
  final String text,time;
  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 7),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 19),
          decoration:  BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: isDark ? const Color.fromARGB(255, 43, 43, 43) : PColors.white,            
          ),
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width / 2,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  text,
                  maxLines: null,

                ),
              ),
              const SizedBox(
                width: PSizes.sm,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "1:03 am",
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: PColors.darkGrey),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
