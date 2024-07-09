// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  void _navigateToSetting(BuildContext context, String setting) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SettingDetailPage(setting: setting),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings",
        style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Color(0xFF987070),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.settings, color: Color(0xFF987070)),
            title: Text("Setting 1",
            style: TextStyle(
              color: Color(0xFF987070)
            ),),
            onTap: () => _navigateToSetting(context, "Setting 1,"),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Color(0xFF987070)),
            title: Text("Setting 2"),
            onTap: () => _navigateToSetting(context, "Setting 2"),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Color(0xFF987070)),
            title: Text("Setting 3"),
            onTap: () => _navigateToSetting(context, "Setting 3"),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Color(0xFF987070)),
            title: Text("Setting 4"),
            onTap: () => _navigateToSetting(context, "Setting 4"),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Color(0xFF987070)),
            title: Text("Setting 5"),
            onTap: () => _navigateToSetting(context, "Setting 5"),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Color(0xFF987070)),
            title: Text("Setting 6"),
            onTap: () => _navigateToSetting(context, "Setting 6"),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Color(0xFF987070)),
            title: Text("Setting 7"),
            onTap: () => _navigateToSetting(context, "Setting 7"),
          ),
        ],
      ),
    );
  }
}

class SettingDetailPage extends StatelessWidget {
  final String setting;

  const SettingDetailPage({super.key, required this.setting});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(setting),
        backgroundColor: Color(0xFF987070),
      ),
      body: Center(
        child: Text(
          "Detail of $setting",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
