import 'package:flutter/material.dart';
import '../../../core/utils/screen_utils.dart';

import '../../../core/constants/brand_colors.dart';

class ShowNote extends StatefulWidget {
  const ShowNote({super.key});
  static const String routeName = "/ShoworPage";
  @override
  State<StatefulWidget> createState() => _ShowNoteState();
}

class _ShowNoteState extends State<ShowNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.width),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.height),
              Text(
                "Book Review : The Design of Everyday Things by Don Norman",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.width,
                    color: BrandColors.white),
              ),
              SizedBox(height: 20.height),
              Text(
                "The Design of Everyday Things is required reading for anyone who is interested in the user experience. I personally like to reread it every year or two.Norman is aware of the durability of his work and the applicability of his principles to multiple disciplines. If you know the basics of design better than anyone else, you can apply them flawlessly anywhere.The Design of Everyday Things is required reading for anyone who is interested in the user experience. I personally like to reread it every year or two.Norman is aware of the durability of his work and the applicability of his principles to multiple disciplines. If you know the basics of design better than anyone else, you can apply them flawlessly anywhere.The Design of Everyday Things is required reading for anyone who is interested in the user experience. I personally like to reread it every year or two.Norman is aware of the durability of his work and the applicability of his principles to multiple disciplines. If you know the basics of design better than anyone else, you can apply them flawlessly anywhere.",
                style: TextStyle(fontSize: 20.width, color: BrandColors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
