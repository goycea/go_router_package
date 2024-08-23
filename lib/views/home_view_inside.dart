import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeViewInside extends StatelessWidget {
  const HomeViewInside({super.key, this.id = 0, this.name = ""});
  final int id;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home View Inside'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You are in Home View Inside',
                style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  context.goNamed("home");
                },
                child: const Text('Go Back to Home View')),
            const SizedBox(height: 20),
            Text('ID: $id', style: const TextStyle(fontSize: 24)),
            Text('Name: $name', style: const TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
