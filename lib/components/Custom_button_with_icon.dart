

import 'package:flutter/material.dart';
import 'package:meta_fit_app/components/size_config.dart';

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon({
    Key? key,
    required this.text,
    required this.iconData,
    required this.color,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final IconData iconData;
  final VoidCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(1),
          border: Border.all(
            color: const Color(0xFF707070),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: color,
            ),
            const SizedBox(width: 20),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Color(0xFF000000),
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
