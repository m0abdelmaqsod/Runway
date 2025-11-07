import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    required this.prefix,
    required this.suffix,
    required this.onTap,
  });

  final String title;
  final String prefix;
  final String suffix;
  final Function()? onTap;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: preferredSize.height,
      scrolledUnderElevation: 0.0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(onTap: onTap, child: SvgPicture.asset(prefix)),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
          ),
          SvgPicture.asset(suffix),
        ],
      ),
    );
  }
}
