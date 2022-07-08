import 'package:flutter/material.dart';

import '../../../models/product.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product productDetail;

  const ProductDetailScreen({Key? key, required this.productDetail})
      : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return const Text('a');
  }
}
