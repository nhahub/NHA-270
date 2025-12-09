import 'package:flutter/material.dart';

class PopUpSave extends StatefulWidget {
  final Future<void> Function(String title) onSave;

  const PopUpSave({
    super.key,
    required this.onSave,
  });

  @override
  State<PopUpSave> createState() => _PopUpSaveState();
}

class _PopUpSaveState extends State<PopUpSave> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController title = TextEditingController();

  @override
  void dispose() {
    title.dispose();
    super.dispose();
  }

  Future<void> _handleSave(BuildContext context) async {
    if (!formKey.currentState!.validate()) return;

    final text = title.text.trim();
    if (text.isEmpty) return;

    await widget.onSave(text);

    if (!mounted) return;
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme   = Theme.of(context).textTheme;

    return AlertDialog(
      backgroundColor: colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      title: Text(
        "Save your project",
        style: textTheme.titleMedium?.copyWith(
          color: colorScheme.primary,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      content: Form(
        key: formKey,
        child: TextFormField(
          controller: title,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return "Please enter a name";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "Project name",
            labelStyle: TextStyle(
              color: colorScheme.primary.withOpacity(0.8),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: colorScheme.primary),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: colorScheme.primary.withOpacity(0.7)),
            ),
            hintText: "Enter a name",
            hintStyle: TextStyle(
              fontSize: 14,
              color: colorScheme.primary.withOpacity(0.5),
            ),
          ),
        ),
      ),
      actionsPadding: const EdgeInsets.only(bottom: 12, left: 12, right: 12),
      actions: [
        Row(
          children: [
            // Save
            Expanded(
              child: ElevatedButton(
                onPressed: () => _handleSave(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorScheme.primary,
                  foregroundColor: colorScheme.onPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text("Save"),
              ),
            ),
            const SizedBox(width: 10),
            // Cancel
            Expanded(
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorScheme.surface,
                  foregroundColor: colorScheme.primary,
                  side: BorderSide(color: colorScheme.primary, width: 1.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text("Cancel"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
