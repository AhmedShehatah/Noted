import 'package:flutter/material.dart';

import '../utils/screen_utils.dart';

class SearchField extends StatelessWidget {
  SearchField({super.key, required this.search});
  final TextEditingController _controller = TextEditingController();
  final void Function(String x) search;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.height,
      width: 300.width,
      //hepadding: EdgeInsets.all(20),
      child: TextField(
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10),
            filled: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        controller: _controller,
        onChanged: search,
      ),
    );
  }
}
