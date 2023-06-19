import 'package:mc01/modules/lacate/locate_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocatePage extends GetWidget<LocateController> {
  const LocatePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locate Page'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 3,
              child: Icon(
                Icons.map_outlined,
                size: 150,
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: OutlinedButton(onPressed: () {}, child: Icon(Icons.add)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
