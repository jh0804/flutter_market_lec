import 'package:flutter/material.dart';

class ProfileRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 32.5,
              backgroundImage: NetworkImage("https://picsum.photos/id/237/200/300"),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusGeometry.circular(15),
                  color: Colors.grey[100],
                ),
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 15,
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("developer"),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "좌동"),
                  WidgetSpan(child: SizedBox(width: 5)),
                  TextSpan(text: "#00912"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
