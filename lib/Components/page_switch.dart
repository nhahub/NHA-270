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

    // 🟣 نجيب الألوان من الثيم بدل ما نسبّت HEX
    final colorScheme = Theme.of(context).colorScheme;

    return SizedBox(
      height: height,
      child: Stack(
        children: [
          // الـ Track اللي ورا
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              decoration: BoxDecoration(
                // كان: Color(0xFFFF08FF).withOpacity(0.26),
                color: colorScheme.primary.withOpacity(0.14),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),

          // الزرار المتحرك (اللي بيغير بين Customize / Design)
          AnimatedAlign(
            duration: const Duration(milliseconds: 220),
            curve: Curves.easeOut,
            alignment:
            _index == 0 ? Alignment.centerLeft : Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 6.0, bottom: 6, left: 20, right: 20),
              child: FractionallySizedBox(
                widthFactor:
                0.5, // عشان ياخد نص العرض تقريبًا (segment لكل اختيار)
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // كان: Color(0xFF9700A3),
                    color: colorScheme.primary,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                        // كان: Colors.black26
                        color: colorScheme.shadow.withOpacity(0.25),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // النصوص + الـ InkWell
          Row(
            children: [
              // Customize
              Expanded(
                child: InkWell(
                  borderRadius: BorderRadius.circular(24),
                  onTap: () => _setIndex(0),
                  child: Center(
                    child: Text(
                      'Customize',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: _index == 0
                        // كان: Colors.white
                            ? colorScheme.onPrimary
                        // كان: Color(0xFF9700A3)
                            : colorScheme.primary,
                      ),
                    ),
                  ),
                ),
              ),

              // Design
              Expanded(
                child: InkWell(
                  borderRadius: BorderRadius.circular(24),
                  onTap: () => _setIndex(1),
                  child: Center(
                    child: Text(
                      'Design',
                      style: TextStyle(
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
