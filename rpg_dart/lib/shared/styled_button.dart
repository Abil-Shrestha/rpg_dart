import 'package:flutter/material.dart';
import 'package:rpg_dart/theme.dart';

class Styledbutton extends StatelessWidget {
  const Styledbutton({super.key, required this.onPressed, required this.child});

  final Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [AppColors.primaryColor, AppColors.primaryAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          child: child,
        ));
  }
}
