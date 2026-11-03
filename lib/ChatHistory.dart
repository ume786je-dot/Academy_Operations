import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ChatDetail.dart';

class ChatHistory extends StatelessWidget {
  ChatHistory({super.key});

  List<String> name = [
    "Anam",
    "Maryam",
    "Bareera",
    "Amna",

  ];

  List<String> messages = [
    'hi',
    'hello',
    'how are you',
    'i am fine',
    'where are you',
  ];

  List<String> times = [
    "10:30 AM",
    "11:30 AM",
    "12:15 PM",
    "9:15 AM",
    "1:30 PM",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat History"),
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Text(
                      name[index][0].toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
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

                  onTap: () {
                    Get.to(
                      () => ChatDetail(
                        name: name[index],
                        index: index,
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}