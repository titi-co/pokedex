import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pokedex/src/constants/theme_variables.dart';
import 'package:pokedex/src/pages/PokemonDetails.dart';
import 'package:pokedex/src/pages/ThemeIcon.dart';
import 'package:pokedex/src/widgets/TypeChip.dart';

class Pokedex extends StatefulWidget {
  const Pokedex({super.key});

  static const routeName = "/pokedex";

  @override
  State<Pokedex> createState() => _PokedexState();
}

class _PokedexState extends State<Pokedex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeVariables.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(ThemeVariables.kDefaultPadding),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Procurar Pokémon",
                  prefixIcon: Icon(
                    Icons.search_outlined,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: ThemeVariables.lightGray,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: ThemeVariables.lightGray,
                    ),
                  ),
                ),
                cursorColor: ThemeVariables.mainBlue,
              ),
              PokemonCard(
                type: "fire",
                types: [
                  TypeChip(
                      type: "fire",
                      name: "Fogo",
                      color: ThemeVariables.fireColor),
                  TypeChip(
                      type: "flying",
                      name: "Voador",
                      color: ThemeVariables.flyingColor),
                ],
                name: "charizard",
                bgColor: ThemeVariables.fireBackgroundColor,
                typeColor: ThemeVariables.fireColor,
                number: "N609",
              ),
              SizedBox(
                height: 12,
              ),
              PokemonCard(
                type: "water",
                types: [
                  TypeChip(
                      type: "water",
                      name: "Água",
                      color: ThemeVariables.waterColor),
                ],
                name: "squirtle",
                bgColor: ThemeVariables.waterBackgroundColor,
                typeColor: ThemeVariables.waterColor,
                number: "N069",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PokemonCard extends StatelessWidget {
  final String type;
  final String name;
  final String number;
  final Color bgColor;
  final Color typeColor;
  final List<Widget> types;

  const PokemonCard({
    super.key,
    required this.type,
    required this.name,
    required this.number,
    required this.bgColor,
    required this.typeColor,
    required this.types,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, PokemonDetails.routeName),
      child: IntrinsicHeight(
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: bgColor),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.all(ThemeVariables.kDefaultPadding),
                  decoration: BoxDecoration(
                    color: bgColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            number,
                            style: ThemeVariables.pokemonCardNumber,
                          ),
                          Text(
                            name.toUpperCase(),
                            style: ThemeVariables.pokemonCardName,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Wrap(
                        spacing: 4,
                        runSpacing: 4,
                        children: types.map((e) => e).toList(),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(ThemeVariables.kSmallPadding),
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: typeColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        "lib/src/assets/images/$type-outline.png",
                        fit: BoxFit.contain,
                      ),
                      Image.asset(
                        "lib/src/assets/images/$name.png",
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
