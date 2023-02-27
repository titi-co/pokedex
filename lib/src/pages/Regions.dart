import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Regions extends StatefulWidget {
  const Regions({super.key});

  static const routeName = "/regions";

  @override
  State<Regions> createState() => _RegionsState();
}

class _RegionsState extends State<Regions> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
    );
  }
}
