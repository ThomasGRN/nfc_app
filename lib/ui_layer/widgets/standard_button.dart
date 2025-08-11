import 'package:flutter/material.dart';
import 'package:nfc_app/core/constants/colors.dart';

class StandardButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const StandardButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    // Largeur de l'écran
    final double diameter = MediaQuery.of(context).size.width * 0.9;

    return Center(
      child: Container(
        width: diameter,
        height: diameter,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [navy, black],
            center: Alignment.center,
            radius: 0.8,
          ),
          border: Border.all(color: cream.withOpacity(0.1), width: 2),
          boxShadow: [BoxShadow(color: cream, blurRadius: 15, spreadRadius: 2)],
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.zero,
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text,
              style: Theme.of(context).textTheme.titleLarge,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
