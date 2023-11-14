import 'package:flutter/material.dart';

class CRUDPageNavBar extends StatelessWidget {
  const CRUDPageNavBar({
    super.key,
    required this.onDeletePressed,
    required this.onSubmitPressed,
    required this.showDeleteButton,
  });

  final VoidCallback onDeletePressed;
  final VoidCallback onSubmitPressed;
  final showDeleteButton;

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
              showDeleteButton
                  ? FloatingActionButton(
                      heroTag: "deleteButton",
                      onPressed: () => onDeletePressed(),
                      backgroundColor:
                          Theme.of(context).colorScheme.errorContainer,
                      child: Icon(
                        Icons.delete,
                        color: Theme.of(context).colorScheme.onErrorContainer,
                      ),
                    )
                  : Container(),
              const Spacer(),
              FloatingActionButton.extended(
                heroTag: "submitButton",
                icon: const Icon(Icons.check),
                label: const Text("Fertig"),
                onPressed: () => onSubmitPressed(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
