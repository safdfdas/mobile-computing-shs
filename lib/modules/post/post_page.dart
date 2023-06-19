import 'package:mc01/modules/post/post_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mc01/utils/time_formatter.dart';

class PostPage extends GetWidget<PostController> {
  const PostPage({super.key});

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
                onPressed: controller.onTapLocateButton,
                child: const Row(
                  children: [
                    Text('Locate'),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_outlined),
                  ),
                ],
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
                      leading: Text(TimeFormatter.a(dateTime)),
                      title: Text(
                          'N${(index + 1).toString().padLeft(2, '0')} Post'),
                      subtitle:
                          Text('user${(index + 1).toString().padLeft(2, '0')}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.thumb_up_outlined),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.thumb_down_outlined),
                            onPressed: () {},
                          ),
                        ],
                      ),
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
