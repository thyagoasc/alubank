import 'package:flutter/material.dart';
import 'package:bank_home/themes/theme_colors.dart';

class ContentDivision extends StatelessWidget {
  const ContentDivision({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: ThemeColors.division,
        ),
      ),
    );
  }
}
