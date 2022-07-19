import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meta_fit_app/components/constants.dart';
import 'package:meta_fit_app/features/services/data/cubit.dart';
import 'package:meta_fit_app/features/services/domain/states.dart';
import 'package:meta_fit_app/features/services/models/product_model.dart';
import 'package:meta_fit_app/features/services/presentation/pages/card_view.dart';

class ProductInfoView extends StatelessWidget {
  const ProductInfoView({
    required this.product,
    Key? key,
  }) : super(key: key);
  final ProductModel product;

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
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: primaryColor,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CardView(),
                        ));
                  },
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ListView(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Image.asset(
                          product.pictureUrl,
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width * 0.6,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Text(
                            product.name,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          color: unActiveColor,
                          thickness: 2,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Text(
                            product.price.toString(),
                            style: const TextStyle(
                              fontSize: 20,
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          color: unActiveColor,
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Text(
                              'description :',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    product.description,
                                    maxLines: 4,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          color: unActiveColor,
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Type :',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              product.type,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          color: unActiveColor,
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Brand :',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              product.brand,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          color: unActiveColor,
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Color :',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(1),
                                  border: Border.all(
                                    color: const Color(0xFF707070),
                                    width: 1,
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    'images/products/t6.png',
                                    width:
                                        MediaQuery.of(context).size.width * 8,
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(1),
                                  border: Border.all(
                                    color: const Color(0xFF707070),
                                    width: 1,
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    'images/products/05.png',
                                    width:
                                        MediaQuery.of(context).size.width * 8,
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(1),
                                  border: Border.all(
                                    color: const Color(0xFF707070),
                                    width: 1,
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    'images/products/f5.png',
                                    width:
                                        MediaQuery.of(context).size.width * 8,
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ]),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          color: unActiveColor,
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Size :',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 35,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(1),
                                      border: Border.all(
                                        color: const Color(0xFF707070),
                                        width: 1,
                                      ),
                                    ),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Text(
                                          'XS',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 35,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(1),
                                      border: Border.all(
                                        color: const Color(0xFF707070),
                                        width: 1,
                                      ),
                                    ),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Text(
                                          'S',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 35,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(1),
                                      border: Border.all(
                                        color: const Color(0xFF707070),
                                        width: 1,
                                      ),
                                    ),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Text(
                                          'M',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 35,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(1),
                                      border: Border.all(
                                        color: const Color(0xFF707070),
                                        width: 1,
                                      ),
                                    ),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Text(
                                          'L',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                  ),
                                ]),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 35,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(1),
                                        border: Border.all(
                                          color: const Color(0xFF707070),
                                          width: 1,
                                        ),
                                      ),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Text(
                                            'XL',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 35,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(1),
                                        border: Border.all(
                                          color: const Color(0xFF707070),
                                          width: 1,
                                        ),
                                      ),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Text(
                                            'XXL',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 35,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(1),
                                        border: Border.all(
                                          color: const Color(0xFF707070),
                                          width: 1,
                                        ),
                                      ),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Text(
                                            '3XL',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          color: unActiveColor,
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Quantity :',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 30,
                              width: 33,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(1),
                                border: Border.all(
                                  color: const Color(0xFF707070),
                                  width: 1,
                                ),
                              ),
                              child: IconButton(
                                  onPressed: () {
                                    CounterCubit.get(context).plus();
                                  },
                                  icon: const Icon(
                                    FontAwesomeIcons.plus,
                                    size: 16,
                                  )),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '${CounterCubit.get(context).counter}',
                              style: const TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 30,
                              width: 33,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(1),
                                border: Border.all(
                                  color: const Color(0xFF707070),
                                  width: 1,
                                ),
                              ),
                              child: IconButton(
                                  onPressed: () {
                                    CounterCubit.get(context).minus();
                                  },
                                  icon: const Icon(
                                    FontAwesomeIcons.minus,
                                    size: 16,
                                  )),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  color: primaryColor,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CardView(),
                          ));
                    },
                    child: const Text(
                      'ADD TO CARD',
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
