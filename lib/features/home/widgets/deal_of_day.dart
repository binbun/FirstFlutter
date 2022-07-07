import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:test_gf/constants/global_variables.dart';

class DealOfDay extends StatelessWidget {
  const DealOfDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: const Text(
            'Deal of the day',
            style: TextStyle(fontSize: 20),
          ),
        ),
        const SizedBox(height: 4),
        Image.network(
          'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTRc5WrrSnooxMxXeM_VlzuLeD_2FZb6WkF4f8mnMyyinNEPZ-3D2I-8gxS2Zh-er6c1Yc_hRrChg&usqp=CAc',
          height: 235,
          fit: BoxFit.fitHeight,
        ),
        Container(
          padding: const EdgeInsets.only(left: 15),
          alignment: Alignment.topLeft,
          child: const Text(
            '\$100',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
          child: const Text(
            'Apple',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHbQvb9KcJbPmXgHJhOPWpe8eb98pIV1UraA&usqp=CAU',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHbQvb9KcJbPmXgHJhOPWpe8eb98pIV1UraA&usqp=CAU',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHbQvb9KcJbPmXgHJhOPWpe8eb98pIV1UraA&usqp=CAU',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHbQvb9KcJbPmXgHJhOPWpe8eb98pIV1UraA&usqp=CAU',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15).copyWith(left: 15),
          alignment: Alignment.topLeft,
          child: Text('See all deals', style: TextStyle(color: Colors.cyan[800]),),
        )
      ],
    );
  }
}
