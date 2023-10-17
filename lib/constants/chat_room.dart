import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  final List<String> messages = []; // List to store messages

  TextEditingController _messageController = TextEditingController();

  void _sendMessage(String message) {
    setState(() {
      messages.add(message);
      _messageController.clear(); // Clear the input field after sending
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Room', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue[100],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(messages[index]),
                );
              },
            ),
          ),
          Divider(height: 1),
          Container(
            color: Theme.of(context).cardColor,
            child: _buildMessageComposer(),
          ),
        ],
      ),
    );
  }


  Widget _buildMessageComposer() {
    return IconTheme(
      data: IconThemeData(color: Colors.blue[100]),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                controller: _messageController,
                onSubmitted: _sendMessage,
                decoration: InputDecoration.collapsed(
                  hintText: 'Send a message',
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () => _sendMessage(_messageController.text),
            ),
          ],
        ),
      ),
    );
  }
}
