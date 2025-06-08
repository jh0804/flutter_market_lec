import 'package:carrot_app/models/chat_message.dart';
import 'package:carrot_app/screens/chatting/components/image_container.dart';
import 'package:carrot_app/theme.dart';
import 'package:flutter/material.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({
    Key? key,
    required this.chatMessage,
  }) : super(key: key);

  final ChatMessage chatMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
      ),
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            ImageContainer(
              height: 50,
              width: 50,  
              borderRadius: 25,
              imageUrl: chatMessage.profileImage,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: chatMessage.sender, style : textTheme().bodyLarge),
                        TextSpan(text: chatMessage.location),
                        TextSpan(text: ' * ${chatMessage.sendDate}'),
                      ]),
                  ),
                  const Spacer(),
                  Text(
                    chatMessage.message,
                    style: textTheme().bodyLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Visibility(
              visible: chatMessage.imageUri != null,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ImageContainer(
                    width: 50, 
                    height: 50,
                    borderRadius: 8, 
                    imageUrl: chatMessage.imageUri ?? '',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}