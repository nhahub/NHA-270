import 'package:flutter/material.dart';

class VerificationBox extends StatefulWidget {
  final TextEditingController controller;

  const VerificationBox({
    super.key,
    required this.controller,
  });

  @override
  State<VerificationBox> createState() => _VerificationBoxState();
}

class _VerificationBoxState extends State<VerificationBox> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();

    _focusNode.addListener(() {
      setState(() {}); // يحدث الواجهة عند تغيير حالة الفوكس
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isFocused = _focusNode.hasFocus;
    final colorScheme = Theme.of(context).colorScheme;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        // كان: Colors.white
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isFocused
          // كان: Color(0xFFCB1C8D)
              ? colorScheme.primary
          // كان: Color(0x33CB1C8D)
              : colorScheme.primary.withOpacity(0.2),
          width: isFocused ? 2 : 1,
        ),
      ),
      child: TextField(
        controller: widget.controller,
        focusNode: _focusNode,
        maxLength: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          counterText: "",
          border: InputBorder.none,
        ),
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface,
        ),
      ),
    );
  }
}
