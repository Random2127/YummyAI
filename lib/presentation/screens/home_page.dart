import 'package:flutter/material.dart';
import 'package:yummyai/data/auth_repo_impl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

void logOut() {
  final authRepo = AuthRepoImpl();
  authRepo.logout();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        backgroundColor: Colors.green,
        actions: [IconButton(onPressed: logOut, icon: Icon(Icons.logout))],
      ),
    );
  }
}
