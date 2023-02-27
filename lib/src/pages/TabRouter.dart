import 'package:flutter/material.dart';
import 'package:pokedex/src/constants/theme_variables.dart';
import 'package:pokedex/src/pages/Pokedex.dart';
import 'package:pokedex/src/pages/Regions.dart';
import 'package:pokedex/src/pages/ThemeIcon.dart';

class TabBarITem {
  TabBarITem({
    required this.icon,
    required this.name,
    required this.path,
    required this.child,
  });

  String icon;
  String name;
  String path;
  Widget child;
}

class TabRouter extends StatefulWidget {
  const TabRouter({super.key});

  static const routeName = "/";

  @override
  State<TabRouter> createState() => _TabRouterState();
}

class _TabRouterState extends State<TabRouter> {
  late List<TabBarITem> bottomAppbarItems;

  int _currentIndex = 0;

  @override
  void initState() {
    bottomAppbarItems = [
      TabBarITem(
        name: "Pokedéx",
        icon: 'pokedex',
        path: Pokedex.routeName,
        child: const Pokedex(),
      ),
      TabBarITem(
        name: "Regions",
        icon: 'region',
        path: Regions.routeName,
        child: const Regions(),
      ),
    ];

    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomAppbarItems[_currentIndex].child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          for (var i = 0; i < bottomAppbarItems.length; i++)
            BottomNavigationBarItem(
              icon: ThemeIcon(
                  name: _currentIndex ==
                          bottomAppbarItems.indexOf(bottomAppbarItems[i])
                      ? "${bottomAppbarItems[i].icon}-on"
                      : "${bottomAppbarItems[i].icon}-off",
                  size: ThemeVariables.kDefaultIconSize),
              label: bottomAppbarItems[i].name,
            )
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedLabelStyle: ThemeVariables.bottomNavigationBarStyle,
        selectedItemColor: ThemeVariables.mainBlue,
      ),
    );
  }
}
