import 'package:flutter/material.dart';

class ChatDetail extends StatelessWidget {
  ChatDetail({
    super.key,
    required this.name,
    required this.index,
  });

  final String name;
  final int index;

  final List<List<String>> chats = [
    [
      "Hi anam",
      "How are you?",
      "I am fine",
      "What about you?",
    ],

    [
      "Hi Maryam",
      "How are you?",
      "I am good",
      "Thank you",
    ],

    [
      "Hello Bareera",
      "Are you free?",
      "Yes",
      "Let's talk",
    ],

    [
      "Hi Amna",
      "Where are you?",
      "I am at home",
      "Okay",
    ],

    [
      "Hello Areeba",
      "Are you free?",
      "Yes",
      "How are you?",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.blue,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(15),

        itemCount: chats[index].length,

        itemBuilder: (context, i) {
          return Align(
            alignment: i % 2 == 0
                ? Alignment.centerRight
                : Alignment.centerLeft,

            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.all(12),

              decoration: BoxDecoration(
                color: i % 2 == 0
                    ? Colors.blue
                    : Colors.grey.shade300,

                borderRadius: BorderRadius.circular(12),
              ),

              child: Text(
                chats[index][i],

                style: TextStyle(
                  color: i % 2 == 0
                      ? Colors.white
                      : Colors.black,

                  fontSize: 16,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}