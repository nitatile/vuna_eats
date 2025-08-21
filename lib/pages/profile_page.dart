import 'package:flutter/material.dart';

import 'login_page.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(height: 20),

            Icon(Icons.account_circle, size: 100, color: Colors.green),
            SizedBox(height: 10),

            Text("Nita Tile", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("nitatileololo@gmail.com"),

            SizedBox(height: 30),

            buildMenuButton(Icons.history, "Order History"),
            buildMenuButton(Icons.settings, "Settings"),
            buildMenuButton(Icons.share, "Share"),
            buildMenuButton(Icons.help, "Help"),

            buildMenuButton(
              Icons.logout,
              "Log Out",
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => LoginPage(onTap: () {  },)),
                      (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuButton(IconData icon, String label, {VoidCallback? onPressed}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      child: ElevatedButton.icon(
        icon: Icon(icon, color: Colors.white),
        label: Text(label, style: TextStyle(fontSize: 16, color: Colors.white)),
        onPressed: onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 16),
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 4,
        ),
      ),
    );
  }
}
