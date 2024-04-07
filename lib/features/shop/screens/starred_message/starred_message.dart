import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import 'package:whatsapp_ui/utils/constants/text_strings.dart';
import '../../../../common/widgets/appbar/tappbar.dart';


class StarredMessageScreen extends StatelessWidget {
  const StarredMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final isDark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: const PAppBar(
        title: PTexts.starredMessage,
        isCenterTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/images/starred_message.png'),
              ),
              SizedBox(
                width: 260,
                child: Text(
                  PTexts.starredMessageText,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: PColors.darkGrey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
