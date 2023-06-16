import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.onTap,
    required this.buttonTitle,
  });

  final Function() onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      color: const Color(0xFFEB1555),
      height: bottomContainerHeight,
      width: double.infinity,
      child: TextButton(
        onPressed: onTap,
        child: Text(
          buttonTitle,
          style: textStyle,
        ),
      ),
    );
  }
}
