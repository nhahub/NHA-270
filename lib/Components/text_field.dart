import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final bool obscureText;
  final TextEditingController controller;
  final Color borderColor;
  final double labelFontSize;

  const CustomTextField({
    super.key,
    required this.label,
    required this.controller,
    this.obscureText = false,  //عشان نشوف هل هنحط الزرار نفسه ولالا
    this.borderColor = const Color(0xFF7F167F),
    this.labelFontSize = 18,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool obscure; //للايكون نفسها عشان نعملها set state وتخفي الباسوورد ولا يظهر

  @override
  void initState() {
    super.initState();
    obscure = widget.obscureText;
    //لو كان الزرار ظاهر ب true يعني الباسوورد هيكون مخفي
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: widget.label,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        labelStyle: TextStyle(
          fontSize: 14,
          color: widget.borderColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: widget.borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: widget.borderColor),

        ),
        suffixIcon: widget.obscureText ?
        IconButton(
          icon: Icon(
            obscure ? Icons.visibility_off : Icons.visibility,
            color: widget.borderColor,
          ),
          onPressed: () {
            setState(() {
              obscure = !obscure;
            });
          },
        )
            : null,
      ),
    );
  }
}
