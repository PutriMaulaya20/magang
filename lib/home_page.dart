// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home",
        style: TextStyle(
          color: Colors.white
        ),
        ),
        backgroundColor: Color(0xFF987070),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  "UNDANGAN",
                  style: TextStyle(
                    color: Color(0xFF987070),
                    fontSize: 40,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                Center(
                  child: Text("Home Page Content"),
                ),
                Center(
                  child: Text(
                    "apa aja la",
                    style: TextStyle(
                      color: Color.fromARGB(255, 84, 65, 10)
                    ),
                  ),
                )

                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
