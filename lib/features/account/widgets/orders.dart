import 'package:flutter/material.dart';
import 'package:test_gf/constants/global_variables.dart';
import 'package:test_gf/features/account/widgets/single_product.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List listOrder = [
    GlobalVariables.carouselImages[0],
    GlobalVariables.carouselImages[0],
    GlobalVariables.carouselImages[0],
    GlobalVariables.carouselImages[0],
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                'Your Orders',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                'See all',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: GlobalVariables.selectedNavBarColor,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 170,
          padding: const EdgeInsets.only(left: 10, right: 0, top: 20),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listOrder.length,
            itemBuilder: (context, index) {
              return SingleProduct(image: listOrder[index]);
            },
          ),
        )
      ],
    );
  }
}
