import 'package:flutter/material.dart';
import 'package:frontend/features/user/presentation/pages/profile_page.dart';
import 'package:frontend/shared/themes/colors.dart';

class BottomNavBar extends StatelessWidget implements PreferredSizeWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: primaryColor,
      elevation: 2,
      items: [
        BottomNavigationBarItem(
          backgroundColor: primaryColor,
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.auto_graph_outlined),
          label: "Graphs",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.task), label: "Tasks"),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: "Calendar",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.group), label: "Friends"),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
