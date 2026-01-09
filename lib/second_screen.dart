import 'package:flutter/material.dart';
import 'package:testing/model.dart';
import 'package:testing/third.dart';

class SecondScreen extends StatelessWidget {
  final User user;
  const SecondScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Details")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Avatar
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Text(
                user.name[0], // first letter of name
                style: const TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),

            // User Name
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: TextField(
                  controller: TextEditingController(
                    text: user.name,
                  ), // initial value
                  decoration: const InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                  onChanged: (value) {
                    // Update the user object if needed
                    print("Name changed: $value");
                  },
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Email
            Card(
              elevation: 3,
              child: ListTile(
                leading: const Icon(Icons.email),
                title: Text(user.email, style: const TextStyle(fontSize: 18)),
                subtitle: const Text("Email"),
              ),
            ),
            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: ElevatedButton(
                onPressed: () {
                  User user = User(
                    id: "001",
                    name: "John Doe",
                    email: "john@example.com",
                    age: 25,
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ThirdScreen(user: user), // pass user here
                    ),
                  );
                },
                child: const Text("Go to Third Screen"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
