import 'package:flutter/material.dart';
import 'package:meta_fit_app/components/size_config.dart';

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace({
    Key? key,
    required this.value,
  }) : super(key: key);
  final int value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value,

    );
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace({
    Key? key,
    required this.value,
  }) : super(key: key);
  final int value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value,
    );
  }
}
