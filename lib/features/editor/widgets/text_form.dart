import 'package:flutter/material.dart';

import '../../../core/constants/brand_colors.dart';

class AppFormField extends StatefulWidget {
  const AppFormField(
      {super.key,
      this.hint,
      this.controller,
      this.action = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.isSecure = false,
      this.isEditable = true,
      this.maxLine = 1,
      this.minLine = 1,
      this.sizeText = 20,
      this.onTap,
      this.label});
  final TextEditingController? controller;

  final String? hint;
  final TextInputAction action;
  final TextInputType textInputType;

  final bool isEditable;
  final Function()? onTap;
  final bool isSecure;
  final int maxLine;
  final int minLine;
  final double sizeText;
  final String? label;
  @override
  State<AppFormField> createState() => _AppFormFieldState();
}

class _AppFormFieldState extends State<AppFormField> {
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
      maxLines: widget.maxLine,
      minLines: widget.minLine,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        labelText: widget.label,
        hintText: widget.hint,
        hintStyle: TextStyle(
            color: BrandColors.greyTextColor, fontSize: widget.sizeText),
      ),
      style: TextStyle(color: BrandColors.white, fontSize: widget.sizeText),
    );
  }
}
