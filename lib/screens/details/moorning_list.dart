import 'package:doctor_reservation_cis/const/color.dart';
import 'package:flutter/material.dart';

class MooringList extends StatefulWidget {
  const MooringList({Key? key}) : super(key: key);

  @override
  State<MooringList> createState() => _MooringListState();
}

class _MooringListState extends State<MooringList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: sizeFromWidth(context, 1),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 2.8),
        itemCount: moorning.length,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        // shrinkWrap: true,

        itemBuilder: (context, index) {
          return Container(
            height: 10,
            width: sizeFromWidth(context, 3.1),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                color: moorning[index]['isSelected'] ? green : Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: TextButton.icon(
              label: Text(
                moorning[index]['clock'],
                style: TextStyle(
                    color: moorning[index]['isSelected']
                        ? Colors.white
                        : Colors.black),
              ),
              icon: Icon(
                Icons.timer,
                color:
                    moorning[index]['isSelected'] ? Colors.white : Colors.black,
              ),
              onPressed: () {
                for (int i = 0; i < moorning.length; i++) {
                  if (moorning[i]['isSelected'] == true) {
                    setState(() {
                      moorning[i]['isSelected'] = false;
                    });
                  }
                  setState(() {
                    moorning[index]['isSelected'] = true;
                  });
                }
              },
            ),
          );
        },
      ),
    );
  }
}

List<Map<String, dynamic>> moorning = [
  {
    'clock': '8:00 Am',
    'isSelected': false,
  },
  {
    'clock': '8:30 Am',
    'isSelected': false,
  },
  {
    'clock': '9:00 Am',
    'isSelected': false,
  },
  {
    'clock': '9:30 Am ',
    'isSelected': false,
  },
  {
    'clock': '10:00 Am',
    'isSelected': false,
  },
  {
    'clock': '10:30 Am',
    'isSelected': false,
  },
];
