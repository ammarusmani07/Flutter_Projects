import 'package:flutter/material.dart';

import 'model for ui.dart';

class NoteUi extends StatelessWidget {
  final List<ChatItem> chatItems = [
    ChatItem(name: 'Mohsin', message: 'how r u',image: 'assets/images/ai-generated-8035998_640.png'),
    ChatItem(name: 'Shahan', message: 'Tiktoker',image: 'assets/images/ai-generated-8035998_640.png'),
    ChatItem(name: 'Rimsha', message: 'how',image: 'assets/images/ai-generated-8035998_640.png'),
    ChatItem(name: 'Shanzoo', message: 'how',image: 'assets/images/ai-generated-8035998_640.png'),
    ChatItem(name: 'Ammar', message: 'how',image: 'assets/images/ai-generated-8035998_640.png'),
    ChatItem(name: 'Adeel', message: '3 to we are going for photoshot',image: 'assets/images/ai-generated-8035998_640.png'),
    ChatItem(name: 'sharjeel', message: 'how',image: 'assets/images/ai-generated-8035998_640.png'),
    ChatItem(name: 'Shanza', message: 'how',image: 'assets/images/ai-generated-8035998_640.png'),
    ChatItem(name: 'Mohsin', message: 'how',image: 'assets/images/ai-generated-8035998_640.png'),
    ChatItem(name: 'Mohsin', message: 'how',image: 'assets/images/ai-generated-8035998_640.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Chats',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: chatItems.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.black,
            child: ListTile(
              contentPadding: EdgeInsets.all(8.0),
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(

                    backgroundImage: AssetImage(
                      chatItems[index].image,
                    ),
                  ),
                  SizedBox(width: 8.0), // Add some space between the avatar and text
                ],
              ),
              title: Expanded(
                child: Text(
                  chatItems[index].name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: Expanded(
                child: Text(
                  chatItems[index].message,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
