import 'package:flutter/material.dart';

import '../../../core/constants/brand_colors.dart';

class ShowPage extends StatefulWidget {
  const ShowPage({super.key});
  static const String routeName = "/ShoworPage";
  @override
  State<StatefulWidget> createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: BrandColors.greyTextColor),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    "Book Review : The Design of Everyday Things by Don Norman",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: BrandColors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              width: 400,
              height: 570,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: BrandColors.greyTextColor),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    "The Design of Everyday Things is required reading for anyone who is interested in the user experience. I personally like to reread it every year or two.Norman is aware of the durability of his work and the applicability of his principles to multiple disciplines. If you know the basics of design better than anyone else, you can apply them flawlessly anywhere.",
                    style: TextStyle(fontSize: 20, color: BrandColors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
