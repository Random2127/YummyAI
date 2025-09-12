import 'package:flutter/material.dart';
import 'package:yummyai/data/auth_repo_impl.dart';
import 'package:yummyai/presentation/screens/add_screen.dart';
import 'package:yummyai/presentation/screens/chat_screen.dart';
import 'package:yummyai/presentation/screens/favourite_screen.dart';
import 'package:yummyai/presentation/screens/param_screen.dart';
import 'package:yummyai/presentation/widgets/custom_app_bar.dart';
import 'package:yummyai/presentation/widgets/custom_nav_bar.dart';

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
  int _selectedIndex = 0;
  late final List<Widget> _screens = [
    ChatScreen(),
    AddScreen(),
    FavouriteScreen(),
    ParamScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: CustomAppBar(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
