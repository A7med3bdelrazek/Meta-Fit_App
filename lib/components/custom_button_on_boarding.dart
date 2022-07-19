import 'package:flutter/material.dart';
import 'package:meta_fit_app/components/constants.dart';
import 'package:meta_fit_app/components/size_config.dart';

class CustomButtonOnBoarding extends StatelessWidget {
  const CustomButtonOnBoarding(
      {Key? key, required this.text, required this.onTap})
      : super(key: key);
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(1),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
