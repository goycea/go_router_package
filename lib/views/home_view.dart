import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home View'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: idController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your ID',
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your Name',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  context.go(
                      '/homeInside/${idController.text}/${nameController.text}');
                },
                child: const Text('Go to Inside View'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
