import 'package:mc01/modules/chat/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mc01/utils/time_formatter.dart';

class ChatPage extends GetWidget<ChatController> {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Text('Chat'),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_outlined),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                DateTime dateTime = DateTime.now()
                    .subtract(Duration(hours: index * index * index));
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(
                          Icons.person_2,
                        ),
                      ),
                      title:
                          Text('user${(index + 1).toString().padLeft(2, '0')}'),
                      subtitle: Text('Hello world!'),
                      trailing: Text(TimeFormatter.a(dateTime)),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
