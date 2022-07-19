import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta_fit_app/components/custom_button_on_boarding.dart';
import 'package:meta_fit_app/components/custom_indicator.dart';
import 'package:meta_fit_app/components/custom_page_view.dart';
import 'package:meta_fit_app/components/size_config.dart';
import 'package:meta_fit_app/features/Auth/presentation/pages/sign_view.dart';
import '../../../components/constants.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomPageView(
            pageController: pageController,
          ),
          Positioned(
            bottom: SizeConfig.defaultSize! * 15,
            left: 0,
            right: 0,
            child: CustomIndicator(
              dotIndex: pageController.hasClients ? pageController.page! : 0,
            ),
          ),
          Visibility(
            visible: pageController.hasClients
                ? (pageController.page == 2 ? false : true)
                : true,
            child: Positioned(
              top: SizeConfig.defaultSize! * 8,
              right: 32,
              child: GestureDetector(
                onTap: () {
                  if (pageController.page! < 2) {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  }
                },
                child: const Text(
                  'Skip',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 5,
            child: CustomButtonOnBoarding(
              onTap: () {
                if (pageController.page! < 2) {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                } else {
                  Get.to(
                    () => const SignView(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 500),
                  );
                }
              },
              text: pageController.hasClients
                  ? (pageController.page == 2 ? 'Get started' : 'Next')
                  : 'Next',
            ),
          ),
        ],
      ),
    );
  }
}
