import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key, this.size = 150});

  final double size;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.w900,
          letterSpacing: -(size / 4),
        ),
        children: [
          TextSpan(
            text: "N",
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondaryContainer,
            ),
          ),
          TextSpan(
            text: "Z",
            style: TextStyle(
              color: Theme.of(context).colorScheme.surfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
