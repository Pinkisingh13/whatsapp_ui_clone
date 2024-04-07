import 'package:flutter/material.dart';

class CreateProfileForm extends StatelessWidget {
  const CreateProfileForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            maxLength: 20,
            keyboardType: TextInputType.name,
            
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              hintText: "Enter your name",
              alignLabelWithHint: true,
            ),
          ),
        ],
      ),
    );
  }
}
