import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/constants.dart';

class GenderCard extends StatelessWidget {
  final IconData genderIcon;
  final String gender;

  const GenderCard({
    super.key,
    required this.genderIcon,
    required this.gender,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          genderIcon,
          size: 100.0,
        ),
        const SizedBox(
          height: 16.0,
        ),
        Text(
          gender,
          style: textStyle,
        ),
      ],
    );
  }
}
