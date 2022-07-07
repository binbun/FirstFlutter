import 'package:flutter/material.dart';
import 'package:test_gf/features/account/widgets/account_button.dart';

class TopButtons extends StatefulWidget {
  const TopButtons({Key? key}) : super(key: key);

  @override
  State<TopButtons> createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AccountButton(
              text: 'Your order',
              onTap: () {},
            ),
            AccountButton(
              text: 'Turn Seller',
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AccountButton(
              text: 'Log out',
              onTap: () {},
            ),
            AccountButton(
              text: 'Your Wish List',
              onTap: () {},
            ),
          ],
        )
      ],
    );
  }
}
