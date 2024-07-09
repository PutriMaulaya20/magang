// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:aplikasiundangan/EventListPage.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime _selectedDay = DateTime.now();

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _selectedDay = selectedDay;
    });

    // Navigate to the event list page for the selected day
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EventListPage(selectedDay: selectedDay),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar",
        style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Color(0xFF987070),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          child: TableCalendar(
            focusedDay: DateTime.now(),
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(3030, 12, 31),
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                color: Color(0xFF987070),
                shape: BoxShape.circle,
              ),
              selectedDecoration: BoxDecoration(
                color: const Color.fromARGB(255, 182, 189, 195),
                shape: BoxShape.circle,
              ),
              weekendTextStyle: TextStyle(
                color: Colors.red,
              ),
              outsideDaysVisible: false,
              markersAlignment: Alignment.bottomCenter,
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
              titleTextStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              leftChevronIcon: Icon(
                Icons.chevron_left,
                color: Color(0xFF987070),
              ),
              rightChevronIcon: Icon(
                Icons.chevron_right,
                color: Color(0xFF987070),
              ),
            ),
            calendarBuilders: CalendarBuilders(
              singleMarkerBuilder: (context, date, event) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  width: 7.0,
                  height: 7.0,
                  margin: const EdgeInsets.symmetric(horizontal: 1.5),
                );
              },
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              weekendStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: _onDaySelected,
          ),
        ),
      ),
    );
  }
}
