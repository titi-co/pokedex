import 'package:flutter/material.dart';
import 'package:pokedex/src/constants/theme_variables.dart';
import 'package:pokedex/src/pages/ThemeIcon.dart';

class TypeChip extends StatelessWidget {
  final String name;
  final String type;
  final Color color;

  const TypeChip({
    super.key,
    required this.type,
    required this.name,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: ThemeVariables.kSmallPadding,
          vertical: ThemeVariables.kSmallPadding / 2),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(50)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ThemeIcon(
            name: type,
            size: ThemeVariables.kDefaultIconSize,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            name,
            style: ThemeVariables.pokemonCardChipText,
          ),
        ],
      ),
    );
  }
}
