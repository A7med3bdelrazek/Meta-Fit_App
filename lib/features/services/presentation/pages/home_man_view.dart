import 'package:flutter/material.dart';
import 'package:meta_fit_app/components/constants.dart';
import 'package:meta_fit_app/features/services/presentation/pages/products_view.dart';
import 'package:meta_fit_app/features/services/presentation/pages/search_view.dart';

class HomeManView extends StatefulWidget {
  const HomeManView({Key? key}) : super(key: key);

  @override
  State<HomeManView> createState() => _HomeManViewState();
}

class _HomeManViewState extends State<HomeManView> {
  int tabBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DefaultTabController(
          length: 4,
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
                      'Jackets',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: tabBarIndex == 0 ? Colors.white : unActiveColor,
                        fontSize: tabBarIndex == 0 ? 14 : null,
                      ),
                    ),
                    Text(
                      'Trousers',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: tabBarIndex == 1 ? Colors.white : unActiveColor,
                        fontSize: tabBarIndex == 1 ? 14 : null,
                      ),
                    ),
                    Text(
                      'T-shirts',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: tabBarIndex == 2 ? Colors.white : unActiveColor,
                        fontSize: tabBarIndex == 2 ? 14 : null,
                      ),
                    ),
                    Text(
                      'Shirts',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: tabBarIndex == 3 ? Colors.white : unActiveColor,
                        fontSize: tabBarIndex == 3 ? 14 : null,
                      ),
                    ),
                  ]),
            ),
            body: const TabBarView(children: [
              ProductsView(),
              ProductsView(),
              ProductsView(),
              ProductsView(),
            ]),
          ),
        ),
        Material(
          child: Container(
            color: primaryColor,
            height: MediaQuery.of(context).size.height * .12,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 35, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    'Meta Fit',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'FugazOne-Regular',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SearchView(),
                          ));
                    },
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
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
