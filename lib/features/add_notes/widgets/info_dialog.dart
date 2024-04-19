import 'package:flutter/material.dart';

import '../../../core/constants/brand_colors.dart';
import '../../../core/utils/screen_utils.dart';

class InfoDialog extends StatelessWidget {
  const InfoDialog(
      {super.key,
      required this.colorRight,
      required this.colorLeft,
      required this.text,
      required this.onPressRight,
      required this.onPressLeft,
      required this.textButRight,
      required this.textButLeft});

  final Color colorRight;
  final Color colorLeft;
  final String text;
  final void Function() onPressRight;
  final void Function() onPressLeft;
  final String textButRight;
  final String textButLeft;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Icon(
        Icons.info,
        color: BrandColors.greyTextColor,
      ),
      content: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(color: BrandColors.greyTextColor),
      ),
      contentTextStyle: TextStyle(color: BrandColors.white, fontSize: 20.width),
      actions: [
        Row(
          children: [
            ElevatedButton(
              onPressed: onPressLeft,
              style: ElevatedButton.styleFrom(
                  backgroundColor: colorLeft,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.width))),
              child: SizedBox(
                width: 60.width,
                child: Text(
                  textButLeft,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: BrandColors.white),
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: onPressRight,
              style: ElevatedButton.styleFrom(
                  backgroundColor: colorRight,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.width))),
              child: SizedBox(
                width: 60.width,
                child: Text(
                  textButRight,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: BrandColors.white),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
