// ignore_for_file: must_be_immutable, avoid_print, must_call_super

import 'dart:ui';

import 'package:doctor_reservation_cis/const/color.dart';
import 'package:doctor_reservation_cis/screens/details/date_list.dart';
import 'package:doctor_reservation_cis/screens/details/evening_list.dart';
import 'package:doctor_reservation_cis/screens/details/moorning_list.dart';
import 'package:doctor_reservation_cis/screens/details/profile_item.dart';
import 'package:doctor_reservation_cis/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsScreen extends StatefulWidget {
  String? name, job, image;

  DetailsScreen(
      {required this.name, required this.image, required this.job, Key? key})
      : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  String? month;
  int? year;

  String getmonth() {
    List months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    var now = DateTime.now();
    int currentMon = now.month;
    print(months[currentMon - 1]);
    return month = months[currentMon - 1];
  }

  List<DateTime> daysInMonth = [];
  List<Map<String, dynamic>> days = [];

  void getDate() {
    DateTime now = DateTime.now();
    DateTime lastDayOfMonth = DateTime(now.year, now.month + 1, 0);
    DateTime today = now;
    for (int i = now.day; i <= lastDayOfMonth.day; i++) {
      daysInMonth.add(today);
      days.add({'date': today, 'is_Selected': false});
      today = today.add(const Duration(days: 1));
    }
  }

  @override
  void initState() {
    month = getmonth();
    year = DateTime.now().year;
    getDate();
    print(daysInMonth);
    print(days);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBlue,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_outlined)),
        actions: [
          Center(
            child: Stack(
              children: [
                const Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                  size: 30,
                ),
                Positioned(
                  right: 3,
                  top: 3,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileItem(
              name: widget.name!,
              image: widget.image!,
              job: widget.job!,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Text(
                '$month' ' $year',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            DateList(days: days),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Text(
                'Mooring',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const MooringList(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Text(
                'Evening',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const EveningList(),
            const CustomButton(text: 'Make an appointment')
          ],
        ),
      ),
    );
  }
}
