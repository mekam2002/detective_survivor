import 'package:flutter/material.dart';
import 'package:myliferpg/widget/message_buble.dart';

import '../constant/list.dart';
import '../repositories/api_communication.dart';
import '../widget/choice_container.dart';
import '../widget/game_text_field.dart';
import '../widget/user_bubble_message.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    super.key,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isMe = false;
  bool _firstPartie = true;

  _scrollToBottom() {
    _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
  }

  _isAnswering() {
    switch (story[generalIndex]) {
      case 'choix':
        setState(() {
          // _isMe = true;
        });

        break;
      default:
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());

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
              Icons.menu,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Flexible(
            child: GestureDetector(
              onDoubleTap: null,
              onSecondaryTap: null,
              onTap: _isMe == false
                  ? () {
                      setState(() {
                        story.add(backendMessage);
                      });

                      _isAnswering();
                      sendMessage(backendMessage);
                    }
                  : () {
                      print('yooooooooooooooooooooooooo');
                    },
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                controller: _scrollController,
                itemCount: story.length,
                itemBuilder: (context, index) {
                  generalIndex = index;
                  return story[index] == "choix"
                      ? UserMessageBuble(
                          message: story[index],
                        )
                      : MessageBuble(
                          isMe: false,
                          message: story[index],
                        );
                },
              ),
            ),
          ),
          _isMe ? const ChoiceContainer() : Container(),
          const GameTextfield(),
        ],
      ),
    );
  }
}
