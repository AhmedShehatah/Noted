import 'package:flutter/material.dart';

import '../../../core/constants/brand_colors.dart';
import '../widgets/text_form.dart';

class EditorPage extends StatefulWidget {
  const EditorPage({super.key});
  static const String routeName = "/EditorPage";
  @override
  State<StatefulWidget> createState() => _EditorPageState();
}

class _EditorPageState extends State<EditorPage> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const AppFormField(
              hint: "Title",
              sizeText: 35,
              maxLine: 3,
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: BrandColors.greyTextColor),
              ),
              child: SingleChildScrollView(
                child: AppFormField(
                  controller: _controller,
                  hint: "Type Something...",
                  maxLine: 16,
                  minLine: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
