import 'package:carrot_app/core/my_util.dart';
import 'package:carrot_app/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({required this.p});

  final Product p;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Container(
        height: 115,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(10),
              child: Image.network(
                "https://picsum.photos/id/237/200/300", // p.urlToImage로 변경
                width: 115,
                fit: BoxFit.cover,
              ),
            ), // 여기에 productList[index].urlToImage 바로 담아서 쓰면 가독성 ㅂㄹ
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${p.title}"),
                  Text("${p.address} • ${p.publishedAt}"),
                  Text("${p.price.toMoney()}원"), // util클래스로 해서 메서드로 빼야 된다.
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Spacer(), // Spacer 사용도 가능 (남은 자리 전부 차지)
                      Icon(CupertinoIcons.chat_bubble_2),
                      Text("${p.commentsCount}"),
                      SizedBox(width: 5),
                      Icon(CupertinoIcons.heart),
                      Text("${p.heartCount}"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
