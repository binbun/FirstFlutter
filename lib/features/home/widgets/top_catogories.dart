import 'package:flutter/material.dart';
import 'package:test_gf/constants/global_variables.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
        itemCount: GlobalVariables.categoryImages.length,
        scrollDirection: Axis.horizontal,
        itemExtent: 75,
        itemBuilder: (context, index) {
          return Column(children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  GlobalVariables.categoryImages[index]['image']!,
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            Text(
              GlobalVariables.categoryImages[index]['title']!,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            )
          ]);
        },
      ),
    );
  }
}
