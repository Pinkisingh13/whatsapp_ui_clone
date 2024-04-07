import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/constants/text_strings.dart';
import 'package:whatsapp_ui/utils/device/device_utility.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 80,
            child: TextFormField(
              textAlign: TextAlign.center,
             keyboardType: TextInputType.number,
             
              expands: false,
              decoration: const InputDecoration(   
                  hintText: "+91",
                  alignLabelWithHint: true,
                  constraints: BoxConstraints(maxWidth: 30)
           
                  ),
            ),
          ),
  
          SizedBox(
            width: TDeviceUtils.getScreenWidth(context)/2,
            child: TextFormField(
              textAlign: TextAlign.center,
              expands: false,
              decoration: const InputDecoration(
                hintText: PTexts.phoneNumber,
                alignLabelWithHint: true,
                // prefixIcon: Icon(Iconsax.user),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
