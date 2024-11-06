import 'package:flutter/material.dart';

import 'my_colors.dart';


class techDivider extends StatelessWidget {
  const techDivider({
    super.key,
    required this.size
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1.5,
      color: SolidColors.dividerColor,
      endIndent: size.width / 6,
      indent: size.width / 6,
    );
  }
}