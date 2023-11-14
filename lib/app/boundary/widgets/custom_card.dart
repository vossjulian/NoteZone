import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.content,
    this.isChecked,
    this.onConfirm,
    this.onCancel,
    this.onOptions,
    this.onTap,
    this.onLongPress,
    this.showLeadingCheckbox = false,
    this.showConfirmButton = false,
    this.showCancleButton = false,
    this.showOptionsButton = false,
    this.trailingIcon,
  });

  final String title;
  final String subtitle;
  bool showLeadingCheckbox;
  bool showConfirmButton;
  bool showCancleButton;
  bool showOptionsButton;

  VoidCallback? onConfirm;
  VoidCallback? onCancel;
  VoidCallback? onOptions;
  VoidCallback? onTap;
  VoidCallback? onLongPress;

  bool? isChecked;
  String? content;

  IconData? trailingIcon;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: InkWell(
        onTap: () => onTap!(),
        onLongPress: () => onLongPress!(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: showLeadingCheckbox
                  ? Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        isChecked = value;
                      })
                  : null,
              trailing: trailingIcon != null
                  ? Icon(
                      trailingIcon,
                      //size: 42,
                    )
                  : null,
              /*trailing: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  onOptions!();
                },
              ),*/
              title: Text(
                title,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                subtitle,
                style: TextStyle(color: Theme.of(context).colorScheme.outline),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            content != null
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            content!,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 10,
                          ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox(),
            showCancleButton || showConfirmButton
                ? ButtonBar(
                    children: <Widget>[
                      showCancleButton
                          ? FloatingActionButton.small(
                              heroTag: null,
                              backgroundColor:
                                  Theme.of(context).colorScheme.errorContainer,
                              child: const Icon(Icons.close),
                              onPressed: () {
                                onCancel!();
                              },
                            )
                          : const SizedBox(),
                      showConfirmButton
                          ? FloatingActionButton.small(
                              heroTag: null,
                              onPressed: () {
                                onConfirm!();
                              },
                              child: const Icon(Icons.check),
                            )
                          : const SizedBox(),
                    ],
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
