import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    required this.keyBoardType,
    required this.labelText,
    required this.validator,
    this.onFieldSubmitted,
    this.onChanged,
    required this.obscuredText,
  }) : super(key: key);
  final TextInputType keyBoardType;
  final String labelText;
  final String validator;
  VoidCallback? onFieldSubmitted;
  VoidCallback? onChanged;
  bool obscuredText = false;
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      obscureText: obscuredText,
      onFieldSubmitted: (value) {
        debugPrint(value);
      },
      onChanged: (value) {
        debugPrint(value);
      },
      validator: (value) {
        if (value!.isEmpty) {
          return validator;
        }
        return null;
      },
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
      ),
    );
  }
}
