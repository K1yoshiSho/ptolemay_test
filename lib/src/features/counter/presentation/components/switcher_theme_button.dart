import 'package:flutter/material.dart';

class SwitcherButton extends StatelessWidget {
  final Function(BuildContext) onTap;
  final bool isDark;
  const SwitcherButton({super.key, required this.onTap, required this.isDark});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
      onPressed: () {
        onTap(context);
      },
      child: Icon(
        isDark ? Icons.wb_sunny : Icons.nightlight_round,
        color: Colors.white,
      ),
    );
  }
}
