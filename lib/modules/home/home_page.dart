import 'package:mc01/modules/home/home_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetWidget<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
      child: Column(
        children: [
          const Expanded(
            child: const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home_outlined,
                    size: 150,
                  ),
                  Text('Home'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
