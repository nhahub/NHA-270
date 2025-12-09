import 'package:flutter/material.dart';

class ColorSchemeToggle extends StatefulWidget {
  final ValueChanged<bool>? onChanged; // true = Light, false = Dark
  final bool initialIsLight;

  const ColorSchemeToggle({
    super.key,
    this.onChanged,
    this.initialIsLight = true,
  });

  @override
  State<ColorSchemeToggle> createState() => _ColorSchemeToggleState();
}

class _ColorSchemeToggleState extends State<ColorSchemeToggle> {
  late bool _isLight;

  @override
  void initState() {
    super.initState();
    _isLight = widget.initialIsLight;
  }

  void _toggle(bool isLight) {
    if (_isLight == isLight) return;
    setState(() => _isLight = isLight);
    widget.onChanged?.call(_isLight);
  }

  @override
  Widget build(BuildContext context) {
    const double height = 44;
    const double width = 240;
    final colorScheme = Theme.of(context).colorScheme;

    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(999),
              color: colorScheme.primary.withOpacity(0.08),
              border: Border.all(
                color: colorScheme.primary.withOpacity(0.25),
                width: 1.2,
              ),
            ),
          ),

          AnimatedAlign(
            duration: const Duration(milliseconds: 230),
            curve: Curves.easeOut,
            alignment:
            _isLight ? Alignment.centerLeft : Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: (width - 8) / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(999),
                  gradient: LinearGradient(
                    colors: [
                      colorScheme.primary,
                      colorScheme.secondary,
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme.primary.withOpacity(0.45),
                      blurRadius: 18,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
              ),
            ),
          ),

          Row(
            children: [
              // Light
              Expanded(
                child: InkWell(
                  borderRadius: BorderRadius.circular(999),
                  onTap: () => _toggle(true),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.wb_sunny_rounded,
                          size: 18,
                          color: _isLight
                              ? colorScheme.onPrimary
                              : colorScheme.primary,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'Light',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: _isLight
                                ? colorScheme.onPrimary
                                : colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Dark
              Expanded(
                child: InkWell(
                  borderRadius: BorderRadius.circular(999),
                  onTap: () => _toggle(false),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.nightlight_round,
                          size: 18,
                          color: !_isLight
                              ? colorScheme.onPrimary
                              : colorScheme.primary,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'Dark',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: !_isLight
                                ? colorScheme.onPrimary
                                : colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
