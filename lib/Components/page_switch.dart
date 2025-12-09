import 'package:flutter/material.dart';

class TopSegmentedSwitch extends StatefulWidget {
  final int initialIndex;
  final ValueChanged<int>? onChanged;

  const TopSegmentedSwitch({
    super.key,
    this.initialIndex = 0,
    this.onChanged,
  });

  @override
  State<TopSegmentedSwitch> createState() => _TopSegmentedSwitchState();
}

class _TopSegmentedSwitchState extends State<TopSegmentedSwitch> {
  late int _index;

  @override
  void initState() {
    super.initState();
    _index = widget.initialIndex;
  }

  void _setIndex(int i) {
    if (_index == i) return;
    setState(() => _index = i);
    widget.onChanged?.call(i);
  }

  @override
  Widget build(BuildContext context) {
    const double height = 50;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme   = Theme.of(context).textTheme;

    return SizedBox(
      height: height,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                color: colorScheme.primary.withOpacity(0.14),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),

          // الزرار المتحرك
          AnimatedAlign(
            duration: const Duration(milliseconds: 220),
            curve: Curves.easeOut,
            alignment:
            _index == 0 ? Alignment.centerLeft : Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 6,
              ),
              child: FractionallySizedBox(
                widthFactor: 0.5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: colorScheme.primary,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                        color: colorScheme.shadow.withOpacity(0.25),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Row(
            children: [
              Expanded(
                child: InkWell(
                  borderRadius: BorderRadius.circular(24),
                  onTap: () => _setIndex(0),
                  child: Center(
                    child: Text(
                      'Customize',
                      style: textTheme.labelLarge?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: _index == 0
                            ? colorScheme.onPrimary
                            : colorScheme.primary,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  borderRadius: BorderRadius.circular(24),
                  onTap: () => _setIndex(1),
                  child: Center(
                    child: Text(
                      'Design',
                      style: textTheme.labelLarge?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: _index == 1
                            ? colorScheme.onPrimary
                            : colorScheme.primary,
                      ),
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
