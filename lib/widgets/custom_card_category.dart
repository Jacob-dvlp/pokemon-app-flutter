import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/app_theme.dart';

class CustomCardCategory extends StatelessWidget {
  final String name;
  const CustomCardCategory({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 66.95,
      height: 24,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 2,
          bottom: 2,
        ),
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: GoogleFonts.nunito(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppTheme.colorPrimary),
        ),
      ),
    );
  }
}
