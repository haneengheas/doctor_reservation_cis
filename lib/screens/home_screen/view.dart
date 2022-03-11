import 'dart:ui';

import 'package:doctor_reservation_cis/const/color.dart';
import 'package:doctor_reservation_cis/screens/home_screen/categroy.dart';
import 'package:doctor_reservation_cis/screens/home_screen/top_rates.dart';
import 'package:doctor_reservation_cis/widgets/custom_app_bar.dart';
import 'package:doctor_reservation_cis/widgets/search_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkBlue,
        appBar: PreferredSize(
            child: const CustomAppBar(),
            preferredSize: Size(sizeFromWidth(context, 1), 60)),
        body: SingleChildScrollView(
          child: Container(
            width: sizeFromWidth(context, 1),
            height: sizeFromHeight(context, 1),
            decoration: const BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35), topLeft: Radius.circular(35))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                 SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Text(
                    'Hi, Olivia',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'WellCome Back',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 10,),
                SearchFieldText(),
                CategroyList(),
                TopRate()
              ],
            ),
          ),
        ));
  }
}
