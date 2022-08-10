import 'package:crypo_wallet/view/constants/ui.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.prefixIcon,
  });
  final String label;
  final Widget prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        height: 1,
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 15,
      ),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        filled: true,
        fillColor: kCustomBlue.withOpacity(0.05),
        hintText: label,

        prefixIcon: prefixIcon,
        hintStyle: const TextStyle(
          color: Colors.grey,
          letterSpacing: 1,
          fontWeight: FontWeight.w400,
          fontSize: 18,
        ),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          borderSide: BorderSide(
            color: Colors.grey[200]!,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.grey[200]!,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.grey[200]!,
          ),
        ),
        // contentPadding: EdgeInsets.all(15.0),
      ),
    );
  }
}
