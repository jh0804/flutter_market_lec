import 'package:carrot_app/models/icon_menu.dart';
import 'package:carrot_app/screens/my_carrot/components/card_icon_menu.dart';
import 'package:carrot_app/screens/my_carrot/components/my_carrot_header.dart';
import 'package:flutter/material.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen();

  @override
  Widget build(BuildContext context) {
    print("MyCarrotScreen build");
    return Scaffold(
      appBar: _appbar(),
      body: ListView(
        children: [
          MyCarrotHeader(),
          SizedBox(height: 8),
          CardIconMenu(iconMenuList: iconMenu1),
          SizedBox(height: 8),
          CardIconMenu(iconMenuList: iconMenu2),
          SizedBox(height: 8),
          CardIconMenu(iconMenuList: iconMenu3),
        ],
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      title: Text("나의 당근"),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 0.5),
        child: Divider(
          thickness: 0.5,
          color: Colors.grey,
        ),
      ),
    );
  }
}
