import 'package:flutter/material.dart';

class EventListPage extends StatelessWidget {
  final DateTime selectedDay;

  const EventListPage({super.key, required this.selectedDay});

  @override
  Widget build(BuildContext context) {
    // Simulasi data acara, bisa diganti dengan data sebenarnya
    final events = {
      DateTime(2023, 7, 1): ['Meeting with Team A', 'Lunch with Client'],
      DateTime(2023, 7, 2): ['Project Presentation', 'Dinner with Team'],
    };

    final eventList = events[selectedDay] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text("Events on ${selectedDay.toLocal()}".split(' ')[0]),
        backgroundColor: Color(0xFF987070),
      ),
      body: eventList.isNotEmpty
          ? ListView.builder(
              itemCount: eventList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(eventList[index]),
                );
              },
            )
          : Center(
              child: Text(
                'No events for this day.',
                style: TextStyle(fontSize: 18),
              ),
            ),
    );
  }
}
