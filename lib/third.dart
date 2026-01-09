import 'package:flutter/material.dart';
import 'package:testing/model.dart';

class ThirdScreen extends StatelessWidget {
  final User user;
  const ThirdScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Third Screen - Summary")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "User Summary",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Name
            Card(
              elevation: 3,
              child: ListTile(
                leading: const Icon(Icons.person),
                title: Text(user.name, style: const TextStyle(fontSize: 20)),
                subtitle: const Text("Name"),
              ),
            ),
            const SizedBox(height: 10),

            // Email
            Card(
              elevation: 3,
              child: ListTile(
                leading: const Icon(Icons.email),
                title: Text(user.email, style: const TextStyle(fontSize: 20)),
                subtitle: const Text("Email"),
              ),
            ),
            const SizedBox(height: 10),

            // Age
            Card(
              elevation: 3,
              child: ListTile(
                leading: const Icon(Icons.cake),
                title: Text(
                  "${user.age} years",
                  style: const TextStyle(fontSize: 20),
                ),
                subtitle: const Text("Age"),
              ),
            ),
            Card(
              elevation: 3,
              child: ListTile(
                leading: const Icon(Icons.cake),
                title: Text(
                  "${user.age} years",
                  style: const TextStyle(fontSize: 20),
                ),
                subtitle: const Text("Age"),
              ),
            ),
            Card(
              elevation: 3,
              child: ListTile(
                leading: const Icon(Icons.cake),
                title: Text(
                  "${user.age} years",
                  style: const TextStyle(fontSize: 20),
                ),
                subtitle: const Text("Age"),
              ),
            ),
            Card(
              elevation: 3,
              child: ListTile(
                leading: const Icon(Icons.cake),
                title: Text(
                  "${user.age} years",
                  style: const TextStyle(fontSize: 20),
                ),
                subtitle: const Text("Age"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
