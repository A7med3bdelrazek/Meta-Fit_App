import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meta_fit_app/components/Custom_button_with_icon.dart';
import 'package:meta_fit_app/components/constants.dart';
import 'package:meta_fit_app/components/size_config.dart';
import 'package:meta_fit_app/components/space.dart';
import 'package:meta_fit_app/features/Auth/presentation/pages/sign_in_view.dart';
import 'package:meta_fit_app/features/Auth/presentation/pages/sign_up_view.dart';
import 'package:meta_fit_app/features/services/presentation/pages/home_view.dart';

class SignView extends StatelessWidget {
  const SignView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeView(),
                  ));
            },
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Skip',
                style: TextStyle(
                  fontSize: 16,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const VerticalSpace(value: 12),
              Image.asset(
                'assets/images/sign.png',
                height: SizeConfig.defaultSize! * 25,
                width: SizeConfig.defaultSize! * 25,
              ),
              const VerticalSpace(value: 4),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Ideal store for your',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              const VerticalSpace(value: 2),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Shopping',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              const VerticalSpace(value: 3),
              const Divider(
                color: Color(0xFF707070),
                thickness: 0.8,
              ),
              const VerticalSpace(value: 3),
              Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: CustomButtonWithIcon(
                        color: const Color(0xFFDB3236),
                        text: 'SIGN IN',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignInView(),
                              ));
                        },
                        iconData: FontAwesomeIcons.googlePlusG,
                      )),
                  const HorizontalSpace(value: 2),
                  Flexible(
                      flex: 1,
                      child: CustomButtonWithIcon(
                        color: primaryColor,
                        text: 'SIGN UP',
                        iconData: FontAwesomeIcons.google,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  SignUpView(),
                              ));
                        },
                      )),
                ],
              ),
              const VerticalSpace(value: 2),
            ],
          ),
        ),
      ),
    );
  }
}
