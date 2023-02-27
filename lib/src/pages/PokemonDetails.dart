import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pokedex/src/constants/theme_variables.dart';
import 'package:pokedex/src/pages/Pokedex.dart';
import 'package:pokedex/src/pages/ThemeIcon.dart';
import 'package:pokedex/src/widgets/TypeChip.dart';

class PokemonDetails extends StatefulWidget {
  const PokemonDetails({super.key});

  static const routeName = "/pokemonDetails";

  @override
  State<PokemonDetails> createState() => _PokemonDetailsState();
}

class _PokemonDetailsState extends State<PokemonDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 300,
              floating: false,
              pinned: false,
              backgroundColor: ThemeVariables.whiteColor,
              title: null,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  padding: EdgeInsets.all(64),
                  color: ThemeVariables.fireColor,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        "lib/src/assets/images/fire-outline.png",
                        fit: BoxFit.contain,
                      ),
                      Image.asset(
                        "lib/src/assets/images/charizard-1.png",
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: ThemeVariables.kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CHARIZARD",
                    style: ThemeVariables.pokemonDetailsName,
                  ),
                  Text(
                    "Nº006",
                    style: ThemeVariables.pokemonDetailsNumber,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Wrap(
                    spacing: 4,
                    runSpacing: 4,
                    children: [
                      TypeChip(
                          type: "fire",
                          name: "Fogo",
                          color: ThemeVariables.fireColor),
                      TypeChip(
                          type: "flying",
                          name: "Voador",
                          color: ThemeVariables.flyingColor),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "Ele cospe fogo que é quente o suficiente para derreter pedregulhos. Pode causar incêndios florestais soprando chamas.",
                    style: ThemeVariables.pokemonDetailsDescription,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  GridView.count(
                    childAspectRatio: 2,
                    crossAxisSpacing: 24,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    children: [
                      InfoGridUnit(
                        info: "PESO",
                        value: "90.5 kg",
                        icon: "scale",
                      ),
                      InfoGridUnit(
                        info: "ALTURA",
                        value: "1.7 m",
                        icon: "height",
                      ),
                      InfoGridUnit(
                        info: "CATEGORIA",
                        value: "Flame",
                        icon: "category",
                      ),
                      InfoGridUnit(
                        info: "HABILIDADE",
                        value: "BLAZE",
                        icon: "pokeball",
                      ),
                    ],
                  ),
                  Text("GÊNERO"),
                  SizedBox(
                    height: 8,
                  ),
                  LinearPercentIndicator(
                    barRadius: Radius.circular(15),
                    lineHeight: 10,
                    percent: 0.65,
                    progressColor: ThemeVariables.mainBlue,
                    backgroundColor: ThemeVariables.mainPink,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ThemeIcon(name: "male", size: 14),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "65%",
                            style:
                                ThemeVariables.pokemonDetailsGenderPercentage,
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ThemeIcon(name: "female", size: 14),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "35%",
                            style:
                                ThemeVariables.pokemonDetailsGenderPercentage,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "FRAQUEZAS",
                    style: ThemeVariables.pokemonDetailsSubTitle,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Wrap(
                    spacing: 4,
                    runSpacing: 4,
                    children: [
                      TypeChip(
                          type: "water",
                          name: "Água",
                          color: ThemeVariables.waterColor),
                      TypeChip(
                          type: "eletric",
                          name: "Elétrico",
                          color: ThemeVariables.eletricColor),
                      TypeChip(
                          type: "rock",
                          name: "Pedra",
                          color: ThemeVariables.rockColor),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "EVOLUÇÕES",
                    style: ThemeVariables.pokemonDetailsSubTitle,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  PokemonCard(
                      type: "fire",
                      name: "charmander",
                      number: "N003",
                      bgColor: ThemeVariables.fireBackgroundColor,
                      typeColor: ThemeVariables.fireColor,
                      types: [
                        TypeChip(
                            type: "fire",
                            name: "Fogo",
                            color: ThemeVariables.fireColor)
                      ]),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ThemeIcon(
                          name: "arrowDown", size: ThemeVariables.fontSizeXXL),
                      Text(
                        "Nível 16",
                        style: ThemeVariables.pokemonDetailsEvolutionStep,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  PokemonCard(
                      type: "fire",
                      name: "charmeleon",
                      number: "N004",
                      bgColor: ThemeVariables.fireBackgroundColor,
                      typeColor: ThemeVariables.fireColor,
                      types: [
                        TypeChip(
                            type: "fire",
                            name: "Fogo",
                            color: ThemeVariables.fireColor)
                      ]),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ThemeIcon(
                          name: "arrowDown", size: ThemeVariables.fontSizeXXL),
                      Text(
                        "Nível 36",
                        style: ThemeVariables.pokemonDetailsEvolutionStep,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  PokemonCard(
                    type: "fire",
                    name: "charizard",
                    number: "N004",
                    bgColor: ThemeVariables.fireBackgroundColor,
                    typeColor: ThemeVariables.fireColor,
                    types: [
                      TypeChip(
                          type: "fire",
                          name: "Fogo",
                          color: ThemeVariables.fireColor),
                      TypeChip(
                          type: "flying",
                          name: "Voador",
                          color: ThemeVariables.flyingColor)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InfoGridUnit extends StatelessWidget {
  final String info;
  final String value;
  final String icon;

  const InfoGridUnit({
    super.key,
    required this.info,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            ThemeIcon(name: icon, size: 12),
            SizedBox(
              width: 4,
            ),
            Text(
              info,
              style: ThemeVariables.pokemonDetailsInfoTitle,
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: ThemeVariables.blackColor.withOpacity(.2),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            value,
            style: ThemeVariables.pokemonDetailsInfo,
          ),
        ),
      ],
    );
  }
}
