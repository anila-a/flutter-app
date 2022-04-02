import 'package:flutter/cupertino.dart';

/// CUSTOM TEXT WIDGET ///

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final double wordSpacing = 0.0; // Default

  const CustomText({
    Key? key,
    required this.text, // Cannot be null!
    // Set default values to optional parameters
    this.size = 16,
    this.fontWeight = FontWeight.w500,
    this.color = CupertinoColors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        // Alternative parameters
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
