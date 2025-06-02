import 'package:carrot_app/theme.dart';
import 'package:flutter/material.dart';

class RoundTextButton extends StatelessWidget {
  String title;
  IconData iconData;

  RoundTextButton(this.title, this.iconData);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromRGBO(255, 226, 208, 1),
            border: Border.all(
              color: Color(0xFFD4D5DD),
              width: 0.5,
            ),
          ),
          child: Icon(
            iconData,
            color: Colors.orange,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "${title}",
          style: textTheme().titleMedium,
        ),
      ],
    );
  }
}
