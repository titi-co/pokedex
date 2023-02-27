import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThemeIcon extends StatelessWidget {
  final String name;
  final double size;

  const ThemeIcon({
    super.key,
    required this.name,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    String assetName = 'lib/src/assets/icons/icon-$name.svg';
    return SizedBox(
      width: size,
      height: size,
      child: SvgPicture.asset(
        assetName,
      ),
    );
  }
}
