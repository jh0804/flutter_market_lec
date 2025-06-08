import 'package:carrot_app/models/chat_message.dart';
import 'package:carrot_app/screens/chatting/components/appbar_preferred_size.dart';
import 'package:carrot_app/screens/chatting/components/chat_container.dart';
import 'package:flutter/material.dart';

class ChattingScreen extends StatelessWidget {

  const ChattingScreen();

  @override
  Widget build(BuildContext context) {
    print("ChattingScreen build");
    return Scaffold(
      appBar: AppBar(
        title: Text("채팅"),
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: List.generate(
          chatMessageList.length,
          (index) => ChatContainer(chatMessage : chatMessageList[index]),
        ),
      ),
    );
  }
}
