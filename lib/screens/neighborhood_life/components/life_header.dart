import 'package:carrot_app/models/neighborhood_life.dart';
import 'package:carrot_app/screens/chatting/components/image_container.dart';
import 'package:carrot_app/theme.dart';
import 'package:flutter/material.dart';

class LifeHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 12.0),
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ImageContainer(
              borderRadius: 6.0, 
              imageUrl: 'https://picsum.photos/id/780/200/100', 
              width: 45.0, 
              height: 45.0,
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Text(
                lifeTitle,
                style: textTheme().bodyLarge,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}