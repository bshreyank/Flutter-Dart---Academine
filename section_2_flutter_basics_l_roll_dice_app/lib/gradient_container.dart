import 'package:flutter/material.dart';
import 'package:section_2_flutter_basics_l_roll_dice_app/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [Colors.deepOrange, Colors.white, Colors.green],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: StyledText("Happy Birthday")),
    );
  }
}
