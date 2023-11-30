import 'package:flutter/material.dart';

class NavType extends StatelessWidget {
  final String navType;
  final bool isSelected;
  final VoidCallback onTap;

  NavType({required this.navType,required this.isSelected,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(
          navType,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isSelected?Colors.deepOrangeAccent:Colors.white),
        ),
      ),
    );
  }
}
