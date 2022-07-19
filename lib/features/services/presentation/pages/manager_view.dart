import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:meta_fit_app/components/constants.dart';
import 'package:meta_fit_app/features/services/presentation/pages/settings_view.dart';
import 'package:meta_fit_app/features/services/presentation/pages/card_view.dart';
import 'package:meta_fit_app/features/services/presentation/pages/home_man_view.dart';

class ManagerView extends StatefulWidget {
  const ManagerView({Key? key}) : super(key: key);

  @override
  State<ManagerView> createState() => _ManagerScreenState();
}

class _ManagerScreenState extends State<ManagerView> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeManView(),
    const CardView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GNav(
            tabShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 10),
            ],
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            color: primaryColor,
            tabBackgroundColor: primaryColor,
            activeColor: Colors.white,
            tabBorderRadius: 0,
            gap: 15,
            onTabChange: (index) {
              setState(() {});
              currentIndex = index;
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.shopping_cart,
                text: 'Card',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ]),
      ),
    );
  }
}
