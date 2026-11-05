
import 'package:flutter/material.dart';

class ChatHistory extends StatelessWidget {
  ChatHistory({super.key});

  final List<String> name = [
    "Anam",
    "Maryam",
    "Bareera",
    "Amna",
  ];

  final List<String> messages = [
    "Hi",
    "Hello",
    "How are you?",
    "I am fine",
  ];

  final List<String> times = [
    "10:30 AM",
    "11:30 AM",
    "12:15 PM",
    "9:15 AM",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat History"),
        backgroundColor: Colors.greenAccent,
      ),

      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Text(
                name[index][0].toUpperCase(),
                style: const TextStyle(color: Colors.white),
              ),
            ),

            title: Text(
              name[index],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            subtitle: Text(messages[index]),

            trailing: Text(times[index]),
          );
        },
      ),
    );
  }
}
