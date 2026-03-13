import 'package:flutter/material.dart';
import '../utils/language.dart';
import 'chat_list_screen.dart';

class LoginScreen extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Language.text("login"))),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: Language.text("email"),
              ),
            ),

            TextField(
              controller: pass,
              decoration: InputDecoration(
                labelText: Language.text("password"),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChatListScreen(),
                  ),
                );
              },
              child: Text(Language.text("login")),
            ),
          ],
        ),
      ),
    );
  }
}
