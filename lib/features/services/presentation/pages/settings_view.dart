import 'package:flutter/material.dart';
import 'package:meta_fit_app/components/constants.dart';
import 'package:meta_fit_app/features/services/presentation/pages/manager_view.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool isSwitched = false;
  String? valueChoose = 'English';
  List<String> languages = ['English', 'Arabic'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'Settings',
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.bold,
            fontFamily: 'FugazOne-Regular',
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ManagerView(),
                ));
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: primaryColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'ACCOUNT SETTINGS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Change the theme',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {});
                      isSwitched = value;
                    }),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Change language',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                DropdownButton(
                  value: valueChoose,
                  items: languages
                      .map((item) => DropdownMenuItem(
                          value: item,
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Center(
                              child: Text(
                                item,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                          )))
                      .toList(),
                  onChanged: (valueChoose) =>
                      setState(() => this.valueChoose = valueChoose as String?),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
