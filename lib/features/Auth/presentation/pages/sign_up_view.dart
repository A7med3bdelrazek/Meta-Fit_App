import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meta_fit_app/components/Custom_button_with_icon.dart';
import 'package:meta_fit_app/components/Custom_text_form_field.dart';
import 'package:meta_fit_app/components/constants.dart';
import 'package:meta_fit_app/components/space.dart';

// ignore: must_be_immutable
class SignUpView extends StatelessWidget {
  SignUpView({Key? key}) : super(key: key);

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
                        'Create your ',
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      Text(
                        'account',
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
                    const VerticalSpace(value: 2),
                    CustomTextFormField(
                      obscuredText: false,
                      validator: 'Name must not empty',
                      keyBoardType: TextInputType.name,
                      labelText: 'Name',
                    ),
                    const VerticalSpace(value: 2),
                    CustomTextFormField(
                      obscuredText: false,
                      validator: 'Email address must not empty',
                      keyBoardType: TextInputType.emailAddress,
                      labelText: 'Email',
                    ),
                    const VerticalSpace(value: 2),
                    CustomTextFormField(
                      validator: 'Password must not empty',
                      keyBoardType: TextInputType.visiblePassword,
                      obscuredText: true,
                      labelText: 'Password',
                    ),
                    const VerticalSpace(value: 6),
                    CustomButtonWithIcon(
                      color: Colors.red,
                      text: 'Sign Up With Google',
                      iconData: FontAwesomeIcons.google,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          debugPrint(emailController.text);
                          debugPrint(passwordController.text);
                        }
                      },
                    ),
                    const VerticalSpace(value: 2),
                    CustomButtonWithIcon(
                      color: primaryColor,
                      text: 'Sign up With facebook',
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
