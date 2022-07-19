import 'package:flutter/material.dart';
import 'package:meta_fit_app/components/constants.dart';
import 'package:meta_fit_app/features/services/presentation/pages/qr_read.dart';
import 'package:meta_fit_app/features/services/presentation/pages/qr_scan.dart';

class BarCodeView extends StatefulWidget {
  const BarCodeView({Key? key}) : super(key: key);

  @override
  State<BarCodeView> createState() => _HomeManViewState();
}

class _HomeManViewState extends State<BarCodeView> {
  int tabBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: primaryColor,
              elevation: 0,
              bottom: TabBar(
                  indicatorColor: primaryColor,
                  onTap: (value) {
                    setState(() {});
                    tabBarIndex = value;
                  },
                  tabs: [
                    Text(
                      'Camera',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: tabBarIndex == 0 ? Colors.white : unActiveColor,
                        fontSize: tabBarIndex == 0 ? 16 : null,
                      ),
                    ),
                    Text(
                      'Keyboard',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: tabBarIndex == 1 ? Colors.white : unActiveColor,
                        fontSize: tabBarIndex == 1 ? 16 : null,
                      ),
                    ),
                  ]),
            ),
            body: const TabBarView(children: [
              QrScan(),
              QrRead(),
            ]),
          ),
        ),
        Material(
          child: Container(
            color: primaryColor,
            height: MediaQuery.of(context).size.height * .15,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 35, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                  const Text(
                    'Search by barcode',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'FugazOne-Regular',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
