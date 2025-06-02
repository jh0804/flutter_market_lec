import 'package:carrot_app/screens/my_carrot/components/profile_button.dart';
import 'package:carrot_app/screens/my_carrot/components/profile_row.dart';
import 'package:carrot_app/screens/my_carrot/components/round_text_button.dart';
import 'package:carrot_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarrotHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            ProfileRow(),
            SizedBox(height: 30),
            ProfileButton(),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundTextButton("판매내역", FontAwesomeIcons.receipt),
                RoundTextButton("구매내역", FontAwesomeIcons.bagShopping),
                RoundTextButton("관심목록", FontAwesomeIcons.heart),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
