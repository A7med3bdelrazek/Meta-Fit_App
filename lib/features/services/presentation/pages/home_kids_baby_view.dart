import 'package:flutter/material.dart';
import 'package:meta_fit_app/components/constants.dart';

class HomeKidsBabyView extends StatelessWidget {
  const HomeKidsBabyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
