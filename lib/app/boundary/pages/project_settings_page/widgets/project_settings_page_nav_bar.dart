import 'package:flutter/material.dart';

class ProjectSettingsPageNavBar extends StatelessWidget {
  const ProjectSettingsPageNavBar({
    super.key,
    required this.onSettingsTagPressed,
    required this.onMembersTabPressed,
    required this.onDeletePressed,
    required this.onAddPressed,
    required this.onSubmitPressed,
    this.showDeleteButton = false,
    this.showAddButton = true,
    this.showSubmitButton = true,
  });

  final VoidCallback onSettingsTagPressed;
  final VoidCallback onMembersTabPressed;
  final VoidCallback onDeletePressed;
  final VoidCallback onAddPressed;
  final VoidCallback onSubmitPressed;
  final bool showDeleteButton;
  final bool showAddButton;
  final bool showSubmitButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
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
                tooltip: 'Open popup menu',
                icon: const Icon(Icons.draw),
                onPressed: () {
                  onSettingsTagPressed();
                },
              ),
              IconButton(
                tooltip: 'Search',
                icon: const Icon(Icons.people),
                onPressed: () {
                  onMembersTabPressed();
                },
              ),
              const Spacer(),
              showDeleteButton
                  ? FloatingActionButton.extended(
                      heroTag: "deleteButton",
                      backgroundColor:
                          Theme.of(context).colorScheme.errorContainer,
                      label: const Text("Projekt löschen"),
                      icon: Icon(
                        Icons.delete,
                        color: Theme.of(context).colorScheme.onErrorContainer,
                      ),
                      onPressed: () => onDeletePressed(),
                    )
                  : const SizedBox(),
              const Spacer(),
              showAddButton
                  ? FloatingActionButton.extended(
                      heroTag: "submitButton",
                      backgroundColor:
                          Theme.of(context).colorScheme.primaryContainer,
                      label: const Text("Einladen"),
                      icon: Icon(
                        Icons.add,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                      onPressed: () => onAddPressed(),
                    )
                  : const SizedBox(),
              showSubmitButton
                  ? FloatingActionButton(
                      heroTag: "submitButton",
                      child: const Icon(Icons.check),
                      onPressed: () => onSubmitPressed(),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
