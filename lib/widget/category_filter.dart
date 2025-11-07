import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CategoryFilter extends StatefulWidget {
  const CategoryFilter({super.key});

  @override
  State<CategoryFilter> createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(width: 1, color: Colors.grey.shade300),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Text(
              "Sort by",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),

            Gap(15),

            SvgPicture.asset(
              "assets/images/svg_icons/Frame 39639.svg",
              width: 14,
            ),
            Spacer(),

            SvgPicture.asset(
              "assets/images/svg_icons/lucide_settings-2.svg",
              width: 23,
            ),

            Gap(10),
            Text(
              "Filter",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),

            Gap(15),

            SvgPicture.asset("assets/images/svg_icons/ion_grid-outline.svg"),
            Gap(20),

            SvgPicture.asset(
              "assets/images/svg_icons/solar_users-group-rounded-outline.svg",
            ),
          ],
        ),
      ),
    );
  }
}
