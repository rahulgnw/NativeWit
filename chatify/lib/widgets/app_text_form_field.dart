import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.hintText,
    this.onSaved,
    this.validator,
     this.obsecure=false,
  });

  final String hintText;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final bool obsecure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecure,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.lightBlueAccent.withOpacity(0.2),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.lightBlueAccent),
        ),
      ),
      onSaved: onSaved,
    );
  }
}
