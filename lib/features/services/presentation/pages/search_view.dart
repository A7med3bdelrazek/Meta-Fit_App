import 'package:flutter/material.dart';
import 'package:meta_fit_app/components/constants.dart';
import 'package:meta_fit_app/features/services/presentation/pages/bar_code_view.dart';
import 'package:meta_fit_app/features/services/presentation/pages/products_view.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(150),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: primaryColor,
                  )),
              title: const Text(
                'Search',
                style: TextStyle(
                  fontFamily: 'FugazOne-Regular',
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.topLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        // height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          onChanged: (data) {
                            print(data);

                          },
                          decoration: InputDecoration(
                            hintText: 'Search Products, Category or Brand',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const BarCodeView(),
                                ));
                          },
                          icon: const Icon(
                            Icons.qr_code_scanner,
                            size: 50,
                            color: primaryColor,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: const ProductsView(),
        ),
      ],
    );
  }
}
