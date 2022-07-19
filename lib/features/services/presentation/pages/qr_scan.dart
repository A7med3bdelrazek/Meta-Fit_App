import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:meta_fit_app/components/constants.dart';

class QrScan extends StatefulWidget {
  const QrScan({Key? key}) : super(key: key);

  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<QrScan> {
  var qr =
      "To find the product, hold the the barcode vertically in the marked area.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              qr,
              maxLines: 2,
              // style: const TextStyle(color: Colors.blue, fontSize: 30,),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              color: primaryColor,
              child: MaterialButton(
                onPressed:scanQr,
                child: const Text(
                  'SCANNER',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }

  Future<void> scanQr() async {
    try {
      FlutterBarcodeScanner.scanBarcode('#2A99CF', 'cancel', true, ScanMode.QR)
          .then((value) {
        setState(() {
          qr = value;
        });
      });
    } catch (e) {
      setState(() {
        qr = 'unable to read this';
      });
    }
  }
}
