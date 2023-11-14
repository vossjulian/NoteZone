import 'package:flutter/material.dart';

class ProfilePageNavBar extends StatelessWidget {
  const ProfilePageNavBar({
    super.key,
    required this.onSubmitPressed,
  });

  final VoidCallback onSubmitPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: 56.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              FloatingActionButton.extended(
                heroTag: "submitButton",
                icon: const Icon(Icons.check),
                label: const Text("Fertig"),
                onPressed: () => onSubmitPressed(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
