import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_gf/constants/global_variables.dart';
import 'package:test_gf/features/account/widgets/below_app_bar.dart';
import 'package:test_gf/features/account/widgets/orders.dart';
import 'package:test_gf/features/account/widgets/top_buttons.dart';
import 'package:test_gf/providers/user_provider.dart';

class AccountScreen extends StatefulWidget {
  static const String routeName = '/home';

  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration:
                const BoxDecoration(gradient: GlobalVariables.appBarGradient),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/amazon_in.png',
                  width: 120,
                  height: 45,
                  color: Colors.black,
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.notifications_outlined,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.search_outlined,
                        color: Colors.black,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
      body: Column(
        children: const [
          BelowAppBar(),
          TopButtons(),
          SizedBox(height: 20),
          Orders(),
        ],
      ),
    );
  }
}
