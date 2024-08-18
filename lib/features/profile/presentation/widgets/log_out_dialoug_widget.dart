import 'package:flutter/material.dart';

class CustomDialogs {
  static void showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            content: Container(
              height: 100,
              width: 100,
              color: Colors.indigo,
              child: Text('Are you sure you want to log out?'),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  // Handle logout logic
                  // Example: UserAuthService.logout();
                  Navigator.pop(context);
                },
                child: Text('Logout'),
              ),
            ]);
      },
    );
  }
}
