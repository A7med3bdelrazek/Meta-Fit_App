import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meta_fit_app/components/Custom_button_with_icon.dart';
import 'package:meta_fit_app/components/Custom_text_form_field.dart';
import 'package:meta_fit_app/components/constants.dart';

// ignore: must_be_immutable
class SignInView extends StatelessWidget {
  SignInView({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(150),
            child: AppBar(
              backgroundColor: primaryColor,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  )),
              title: const Text(
                'BACK',
                style: TextStyle(
                  fontSize: 16,
                  // fontFamily: 'Roboto',
                  color: Colors.white,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Login into ',
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      Text(
                        'your account',
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      validator: 'Email address must not empty',
                      keyBoardType: TextInputType.emailAddress,
                      obscuredText: false,
                      labelText: 'Email',
                    ),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      validator: 'Password must not empty',
                      keyBoardType: TextInputType.visiblePassword,
                      obscuredText: true,
                      labelText: 'Password',
                    ),
                    const SizedBox(height: 100),
                    CustomButtonWithIcon(
                      color: const Color(0xFFDB3236),
                      text: 'Sign In With Google',
                      iconData: FontAwesomeIcons.googlePlusG,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          debugPrint(emailController.text);
                          debugPrint(passwordController.text);
                        }
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButtonWithIcon(
                      color: primaryColor,
                      text: 'Sign In With Facebook',
                      iconData: FontAwesomeIcons.facebookF,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          debugPrint(emailController.text);
                          debugPrint(passwordController.text);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
