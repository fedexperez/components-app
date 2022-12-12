import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.counterText,
    this.suffixIcon,
    this.prefixIcon,
    this.icon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? counterText;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, dynamic> formValues;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        if (value.length < 3) return 'Minimo de tres letras';
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: counterText,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
