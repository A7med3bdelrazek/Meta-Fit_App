import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class QrRead extends StatefulWidget {
  const QrRead({Key? key}) : super(key: key);

  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<QrRead> {
  var qr = 'Add Data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BarcodeWidget(
                data: qr,
                barcode: Barcode.qrCode(),
                height: 250,
                width: 250,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'To find the product, type the 13-digit number written on the barcode.',
                maxLines: 2,
                style: TextStyle(),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                onChanged: (val) {
                  setState(() {
                    qr = val;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search Products, Category or Brand',
                  border: OutlineInputBorder(
                    gapPadding: 4.0,
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
