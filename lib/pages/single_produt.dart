import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway/models/product_model.dart';
import 'package:runway/widget/category_filter.dart';
import 'package:runway/widget/custom_appbar.dart';

class SingleProdut extends StatefulWidget {
  const SingleProdut({super.key, this.item});

  final ProductModel? item;

  @override
  State<SingleProdut> createState() => _SingleProdutState();
}

class _SingleProdutState extends State<SingleProdut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          // ========= && ========= //
          Gap(15),

          // ========= && ========= //
          CustomAppbar(
            title: "Men",
            prefix: "assets/images/svg_icons/arrow_left.svg",
            suffix: "assets/images/svg_icons/Vector.svg",
            onTap: () {
              Navigator.pop(context);
            },
          ),

          // ========= && ========= //\

          // ========= && ========= //
          CategoryFilter(),

          // ========= && ========= //
        ],
      ),
    );
  }
}
