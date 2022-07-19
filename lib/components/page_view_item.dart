import 'package:flutter/material.dart';
import 'package:meta_fit_app/components/size_config.dart';
import 'package:meta_fit_app/components/space.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
  }) : super(key: key);
  final String? title;
  final String? subTitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(value: 15),
        Image.asset(
          image!,
          height: SizeConfig.defaultSize! * 25,
          width: SizeConfig.defaultSize! * 25,
        ),
        const VerticalSpace(value: 2),
        Text(
          title!,
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xFF2F2E41),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(value: 3),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            subTitle!,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 15,
              color: Color(0xFF78787C),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
