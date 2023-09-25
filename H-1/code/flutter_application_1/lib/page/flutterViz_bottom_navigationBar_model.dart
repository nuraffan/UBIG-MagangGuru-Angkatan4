import 'package:flutter/material.dart';

class FlutterVizBottomNavigationBarModel extends StatefulWidget {
  const FlutterVizBottomNavigationBarModel(
      {super.key, required IconData icon, required String label});

  IconData? get icon => null;

  get label => null;

  @override
  State<FlutterVizBottomNavigationBarModel> createState() =>
      _FlutterVizBottomNavigationBarModelState();
}

class _FlutterVizBottomNavigationBarModelState
    extends State<FlutterVizBottomNavigationBarModel> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
