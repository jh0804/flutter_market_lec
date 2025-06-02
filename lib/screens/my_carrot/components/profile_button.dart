import 'package:carrot_app/theme.dart';
import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFD4D5DD),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        height: 45,
        child: Center(
          child: Text(
            "프로필 보기",
            style: textTheme().titleMedium,
          ),
        ),
      ),
    );
  }
}
