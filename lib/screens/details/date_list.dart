import 'package:doctor_reservation_cis/const/color.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class DateList extends StatefulWidget {
   List<Map<String,dynamic>> days =[];
 DateList({required this.days ,Key? key}) : super(key: key);

  @override
  State<DateList> createState() => _DateListState();
}

class _DateListState extends State<DateList> {
  @override
  Widget build(BuildContext context) {
    return             SizedBox(
      height: 110,
      child: ListView.builder(
          itemCount: widget.days.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                for (int i = 0; i < widget.days.length; i++) {
                  if (widget.days[i]['is_Selected'] == true) {
                    setState(() {
                      widget.days[i]['is_Selected'] = false;
                    });
                  }
                  setState(() {
                    widget.days[index]['is_Selected'] = true;
                  });
                }
              },
              child: Container(
                height: 60,
                width: 70,
                margin: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    color: widget.days[index]['is_Selected']
                        ? green
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      DateFormat('E').format(widget.days[index]['date']),
                      style: TextStyle(
                          color: widget.days[index]['is_Selected']
                              ? Colors.white
                              : Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      DateFormat('dd').format(widget.days[index]['date']),
                      style: TextStyle(
                          color: widget.days[index]['is_Selected']
                              ? Colors.white
                              : Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            );
          }),
    )
    ;
  }
}
