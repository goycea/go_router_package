import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondViewInside extends StatelessWidget {
  SecondViewInside({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second View Inside'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You are in Second View Inside',
                style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  context.pop();
                },
                child: const Text('Go Back to Second View')),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
