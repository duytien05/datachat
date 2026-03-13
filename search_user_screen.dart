import 'package:flutter/material.dart';
import '../utils/mock_users.dart';
import '../models/user.dart';
import 'chat_screen.dart';

class SearchUserScreen extends StatefulWidget {
  const SearchUserScreen({Key? key}) : super(key: key);

  @override
  _SearchUserScreenState createState() =>
      _SearchUserScreenState();
}

class _SearchUserScreenState
    extends State<SearchUserScreen> {
  TextEditingController controller =
      TextEditingController();

  User? foundUser;

  String message = "";

  void searchUser() {
    String phone = controller.text.trim();

    for (User user in mockUsers) {
      if (user.phone == phone) {
        setState(() {
          foundUser = user;
          message = "";
        });

        return;
      }
    }

    setState(() {
      foundUser = null;
      message = "Số điện thoại không tồn tại";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Search by phone")),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            TextField(
              controller: controller,
              keyboardType: TextInputType.phone,

              decoration: const InputDecoration(
                labelText: "Phone number",
              ),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: searchUser,
              child: const Text("Search"),
            ),

            const SizedBox(height: 20),

            /// USER FOUND
            if (foundUser != null)
              ListTile(
                leading: CircleAvatar(
                  child: Text(foundUser!.name[0]),
                ),

                title: Text(foundUser!.name),

                subtitle: Text(foundUser!.phone),

                /// CLICK USER → OPEN CHAT
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          ChatScreen(foundUser!),
                    ),
                  );
                },
              ),

            /// USER NOT FOUND
            if (message.isNotEmpty)
              Text(
                message,
                style: const TextStyle(color: Colors.red),
              ),
          ],
        ),
      ),
    );
  }
}
