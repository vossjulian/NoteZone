import 'package:flutter/material.dart';

class AuthPageNavBar extends StatelessWidget {
  const AuthPageNavBar({
    super.key,
    required this.onSignInTabPressed,
    required this.onSignUpTabPressed,
    required this.onSubmitPressed,
  });

  final VoidCallback onSignInTabPressed;
  final VoidCallback onSignUpTabPressed;
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
              IconButton(
                tooltip: 'Anmelden',
                icon: Icon(
                  Icons.key,
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
                onPressed: () => onSignInTabPressed(),
              ),
              IconButton(
                tooltip: 'Registrieren',
                icon: Icon(
                  Icons.person_add_alt_1,
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
                onPressed: () => onSignUpTabPressed(),
              ),
              const Spacer(),
              FloatingActionButton(
                heroTag: "submitButton",
                onPressed: () => onSubmitPressed(),
                child: const Icon(Icons.check),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
