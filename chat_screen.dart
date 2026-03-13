import 'package:flutter/material.dart';
import '../models/message.dart';
import '../widgets/message_bubble.dart';
import '../models/user.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  const ChatScreen(this.user, {Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Message> messages = [];

  final controller = TextEditingController();

  void sendMessage() {
    if (controller.text.isEmpty) return;

    setState(() {
      messages.add(
        Message(
          text: controller.text,
          isMe: true,
          time: DateTime.now(),
        ),
      );
    });

    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.user.name)),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return MessageBubble(messages[index]);
              },
            ),
          ),

          Row(
            children: [
              Expanded(
                child: TextField(controller: controller),
              ),

              IconButton(
                icon: Icon(Icons.send),
                onPressed: sendMessage,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
