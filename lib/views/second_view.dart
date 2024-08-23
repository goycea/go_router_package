import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondView extends StatelessWidget {
  const SecondView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second View'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.goNamed('secondInside');
          },
          child: const Text('Go to Second View'),
        ),
      ),
    );
  }
}
