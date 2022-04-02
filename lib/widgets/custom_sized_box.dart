import 'package:flutter/cupertino.dart';

/// 3 CUSTOM SIZED BOXES WITH DEFAULT HEIGHT VALUES ///

/// SMALL SIZED BOX, HEIGHT = 5.0 ///
class SmallSizedBox extends StatelessWidget {
  final double height = 5.0;

  const SmallSizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

/// MEDIUM SIZED BOX, HEIGHT = 10.0 ///
class MediumSizedBox extends StatelessWidget {
  final double height = 10.0;

  const MediumSizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

/// LARGE SIZED BOX, HEIGHT = 30.0 ///
class LargeSizedBox extends StatelessWidget {
  final double height = 30.0;

  const LargeSizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
