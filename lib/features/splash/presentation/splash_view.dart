import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta_fit_app/components/size_config.dart';
import 'package:meta_fit_app/features/on%20Boarding/presentation/on_boarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  // ignore: must_call_super
  void initState() => goToNextView();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(
              child: Image(
                width: 170,
                height: 200,
                image: AssetImage('assets/images/splash_view_image.PNG'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const OnBoardingView(), transition: Transition.fade);
    });
  }
}
