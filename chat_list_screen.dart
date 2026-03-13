import 'package:flutter/material.dart';
import 'package:chatapp/screens/search_user_screen.dart';
import 'package:chatapp/settings_screen.dart';

import '../utils/language.dart';
import '../utils/mock_users.dart';
import '../models/user.dart';
import 'chat_screen.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Language.text("ChatApp")),

        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SettingsScreen(),
                ),
              );
            },
          ),

          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SearchUserScreen(),
                ),
              );
            },
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: mockUsers.length,

        itemBuilder: (context, index) {
          User user = mockUsers[index];

          return ListTile(
            leading: CircleAvatar(
              child: Text(user.name[0]),
            ),

            title: Text(user.name),

            subtitle: Text(user.phone),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ChatScreen(user),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
