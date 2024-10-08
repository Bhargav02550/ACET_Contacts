import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputTextFeild extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  final IconData icon;
  final String label;
  // ignore: non_constant_identifier_names
  final bool IsObscure;
  InputTextFeild({
    super.key,
    required this.icon,
    required this.label,
    required this.controller,
    // ignore: non_constant_identifier_names
    this.IsObscure = false,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 16),
      obscuringCharacter: '*',
      obscureText: IsObscure,
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.orange.shade200,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.orange.shade100,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        hintStyle: const TextStyle(fontSize: 16),
        hintText: label,
        prefixIcon: Icon(
          icon,
          color: Colors.orangeAccent.shade200,
        ),
      ),
    );
  }
}
