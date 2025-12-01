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
    widget.onChanged?.call(i); // ✅ ابعتي i مش _index عشان مفيهاش لغبطة
  }


  @override
  Widget build(BuildContext context) {
    const double height = 50;

    return SizedBox(
      height: height,
      child: Stack( //عملنا stack عشان هنحط كذا حاجة جواه زي row فيه ال text و container الي هيتحرك (الزرار) يمين وشمال فكدا فيه كذا حاجة فوق بعض
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFF08FF).withOpacity(0.26),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),

          AnimatedAlign(
            duration: const Duration(milliseconds: 220),
            curve: Curves.easeOut,
            alignment:
            _index == 0 ? Alignment.centerLeft : Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 6.0,bottom: 6,left: 20,right: 20),
              child: FractionallySizedBox(                //عشان الزرار الي بيتحرك ياخد نص ال parent الي جواه لما يعمل switch
              widthFactor: 0.5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF9700A3),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        offset: Offset(0, 4),
                        color: Colors.black26,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

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
                            ? Colors.white
                            : const Color(0xFF9700A3),
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
                            ? Colors.white
                            : const Color(0xFF9700A3),
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
