
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/sizes.dart';
import '../../../utils/constants/image_strings.dart';

class PChatRow extends StatelessWidget {
  const PChatRow({
    super.key,
    required this.title,
    required this.message,
    required this.time,
    required this.toShowImage,
    required this.toOpenChat,
    this.isShowTime = true, 
     this.isShowIcon = true,
  });
  final String title, message, time;
  final VoidCallback toShowImage, toOpenChat;
  final bool isShowTime, isShowIcon;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: PSizes.lg),
      child: Row(
        children: [
          // User's Profile Icon
          GestureDetector(
            onTap: toShowImage,
            child: const SizedBox(
              height: 50,
              width: 50,
              child: CircleAvatar(
                backgroundImage: AssetImage(PImages.userImage),
              ),
            ),
          ),
          const SizedBox(
            width: PSizes.spaceBtwItems,
          ),
          Expanded(
            child: GestureDetector(
              onTap: toOpenChat,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // User Name
                        Text(
                          title,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),

                        // Message
                        Row(
                          children: [
                          isShowIcon ?  const Icon(
                              Icons.check,
                              size: 14,
                            ) : const SizedBox(),
                            const SizedBox(
                              width: 3,
                            ),
                            Expanded(
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,     
                                message,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                          width: PSizes.spaceBtwSections * 5.7,
                        ),
                      ],
                    ),
                  ),

                  //time
                  isShowTime ? Text(time) : const SizedBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
