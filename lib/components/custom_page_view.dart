import 'package:flutter/material.dart';
import 'package:meta_fit_app/components/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key, required this.pageController})
      : super(key: key);
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageViewItem(
          title: 'Meta Fit',

          subTitle:
              'Discover our urban collection to spend the summer with great style',
          image: 'assets/images/on_boarding_1.png',
        ),
        PageViewItem(
          title: 'Delivery on the way',
          subTitle: 'Get your order by speed delivery',
          image: 'assets/images/on_boarding_2.png',
        ),
        PageViewItem(
          title: 'Delivery Arrived',
          subTitle: 'Order is arrived at your place',
          image: 'assets/images/on_boarding_3.png',
        ),
      ],
    );
  }
}
