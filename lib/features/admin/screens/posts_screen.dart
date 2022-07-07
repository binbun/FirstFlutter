import 'package:flutter/material.dart';
import 'package:test_gf/common/widgets/custom_button.dart';
import 'package:test_gf/common/widgets/custom_text.dart';
import 'package:test_gf/constants/global_variables.dart';
import 'package:test_gf/features/admin/screens/add_product_screen.dart';
import 'package:test_gf/features/auth/services/auth_service.dart';

enum Auth {
  signIn,
  signUp,
}

class PostsScreen extends StatefulWidget {
  static const String routeName = 'posts-screen';

  const PostsScreen({Key? key}) : super(key: key);

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  void navigateToAddProduct() {
    Navigator.pushNamed(context, AddProductScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('products'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: navigateToAddProduct,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
