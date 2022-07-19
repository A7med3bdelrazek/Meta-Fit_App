import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta_fit_app/components/constants.dart';
import 'package:meta_fit_app/features/services/data/cubit.dart';
import 'package:meta_fit_app/features/services/domain/states.dart';

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              elevation: 0.0,
              title: const Text(
                'My Card',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'FugazOne-Regular',
                ),
              ),
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: primaryColor,
                  )),
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 0,
                          ),
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.23,
                            width: MediaQuery.of(context).size.width * 0.22,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(1),
                              border: Border.all(
                                color: const Color(0xFF707070),
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'images/products/02.png',
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    fit: BoxFit.cover,
                                  ),
                                  const Spacer(flex: 5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Man Polo T-Shirt',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        '150 EGP',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            'Color :',
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Yellow',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            'Size :',
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'XL',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Spacer(flex: 6),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Spacer(flex: 1),
                                        IconButton(
                                          onPressed: () {
                                            CounterCubit.get(context).plus();
                                          },
                                          icon: const Icon(
                                            Icons.keyboard_arrow_up,
                                            size: 30,
                                          ),
                                        ),
                                        Text(
                                          '${CounterCubit.get(context).counter}',
                                          style: const TextStyle(
                                            fontSize: 20,
                                            color: primaryColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            CounterCubit.get(context).minus();
                                          },
                                          icon: const Icon(
                                            Icons.keyboard_arrow_down,
                                            size: 30,
                                          ),
                                        ),
                                        const Spacer(flex: 1),
                                      ]),
                                  const Spacer(flex: 1),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  color: primaryColor,
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      'ORDER',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
