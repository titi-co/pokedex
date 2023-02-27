import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pokedex/src/constants/theme_variables.dart';
import 'package:pokedex/src/pages/PokemonDetails.dart';
import 'package:pokedex/src/pages/TabRouter.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: TabRouter.routeName,
      routes: {
        TabRouter.routeName: (context) => const TabRouter(),
        PokemonDetails.routeName: (context) => const PokemonDetails(),
      },
    );
  }
}
