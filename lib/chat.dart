
import 'package:flutter/material.dart';

class ChatHistory extends StatelessWidget {
  ChatHistory({
    super.key,
    required this.name,
    required this.n,
  });

  final String name;
  final int n;

  final List<String> send = [
    "Hi",
    "Hello",
    "How are you?",
    "I am fine",
    "What are you up to?",
    
    "Nothing",
    "Okay",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(name),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: send.length,
                itemBuilder: (context, index) {
                  bool isMe = index % 2 != 0;

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: isMe
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: isMe
                              ? Colors.green.shade100
                              : Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          send[index],
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Type a message...",
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send),
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




