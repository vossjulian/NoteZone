import 'package:flutter/material.dart';

class ProjectPageNavBar extends StatelessWidget {
  const ProjectPageNavBar({
    super.key,
    required this.onNoteTabPressed,
    required this.onAppointmentTabPressed,
    required this.onTodoTabPressed,
    required this.onSubmitPressed,
  });

  final VoidCallback onNoteTabPressed;
  final VoidCallback onAppointmentTabPressed;
  final VoidCallback onTodoTabPressed;
  final VoidCallback onSubmitPressed;

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
                  onNoteTabPressed();
                },
              ),
              IconButton(
                tooltip: 'Search',
                icon: const Icon(Icons.edit_calendar),
                onPressed: () {
                  onAppointmentTabPressed();
                },
              ),
              IconButton(
                tooltip: 'Favorite',
                icon: const Icon(Icons.doorbell),
                onPressed: () {
                  onTodoTabPressed();
                },
              ),
              const Spacer(),
              FloatingActionButton(
                heroTag: "submitButton",
                child: const Icon(Icons.add),
                onPressed: () => onSubmitPressed(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
