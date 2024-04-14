import 'package:flutter/material.dart';

import '../core/constants/brand_colors.dart';

class AppFormField extends StatefulWidget {
  const AppFormField(
      {super.key,
      this.controller,
      required this.hint,
      this.action = TextInputAction.next,
      this.textInputType = TextInputType.text,
      //this.validator,
      this.isSecure = false,
      this.isEditable = true,
      this.onTap});
  final TextEditingController? controller;
  final String hint;
  final TextInputAction action;
  final TextInputType textInputType;
  // final BaseValidator? validator;
  final bool isEditable;
  final Function()? onTap;
  final bool isSecure;
  @override
  State<AppFormField> createState() => _AppFormFieldState();
}

class _AppFormFieldState extends State<AppFormField> {
  bool _obscuredPassword = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      readOnly: !widget.isEditable,
      onTap: widget.onTap,
      controller: widget.controller,
      keyboardType: widget.textInputType,
      textInputAction: widget.action,
      // validator: (value) {
      //   return BaseValidator.validateValue(
      //     context,
      //     value,
      //     [
      //       widget.validator ?? RequiredValidator(),
      //     ],
      //     widget.validator == null ? false : true,
      //   );
      // },
      maxLines: 1,
      minLines: 1,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        hintText: widget.hint,
        hintStyle: TextStyle(color: BrandColors.white),
      ),
      style: TextStyle(color: BrandColors.white),

      obscureText: widget.isSecure ? _obscuredPassword : false,
    );
  }
}
