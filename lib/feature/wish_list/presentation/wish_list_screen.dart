import 'package:flutter/material.dart';

class ProductWishList extends StatefulWidget {
  const ProductWishList({super.key});

  @override
  State<ProductWishList> createState() => _ProductWishListState();
}

class _ProductWishListState extends State<ProductWishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Wish list"),
      ),
    );
  }
}