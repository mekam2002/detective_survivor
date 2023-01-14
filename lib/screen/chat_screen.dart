import 'package:flutter/material.dart';
import 'package:myliferpg/widget/message_buble.dart';

import '../constant/list.dart';
import '../repositories/api_communication.dart';
import '../widget/choice_container.dart';
import '../widget/game_text_field.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    super.key,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    // String actualStory = story[index];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 95, 94, 94),
        title: Row(
          children: const [
            CircleAvatar(),
            SizedBox(
              width: 20,
            ),
            Text(
              "Sam",
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.videocam,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            story.add(backendMessage);
          });
          sendMessage(backendMessage);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: story.length,
                itemBuilder: (context, index) {
                  generalIndex = index + 1;
                  return MessageBuble(
                    isMe: true,
                    message: story[index].toString(),
                  );
                },
              ),
            ),
            if (story[generalIndex] == "choix")
              const ChoiceContainer()
            else
              Container(),
            const SizedBox(
              height: 50,
            ),
            const GameTextfield(),
          ],
        ),
      ),
    );
  }
}
