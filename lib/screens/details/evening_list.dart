import 'package:doctor_reservation_cis/const/color.dart';
import 'package:flutter/material.dart';

class EveningList extends StatefulWidget {
  const EveningList({Key? key}) : super(key: key);

  @override
  State<EveningList> createState() => _EveningListState();
}

class _EveningListState extends State<EveningList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: sizeFromWidth(context, 1),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 2.8),
        itemCount: evening.length,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        // shrinkWrap: true,

        itemBuilder: (context, index) {
          return Container(
            height: 10,
            width: sizeFromWidth(context, 3.1),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                color: evening[index]['isSelected'] ? green : Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: TextButton.icon(
              label: Text(
                evening[index]['clock'],
                style: TextStyle(
                  color: evening[index]['isSelected']
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              icon: Icon(
                Icons.timer,
                color:
                    evening[index]['isSelected'] ? Colors.white : Colors.black,
              ),
              onPressed: () {
                for (int i = 0; i < evening.length; i++) {
                  if (evening[i]['isSelected'] == true) {
                    setState(() {
                      evening[i]['isSelected'] = false;
                    });
                  }
                  setState(() {
                    evening[index]['isSelected'] = true;
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

List<Map<String, dynamic>> evening = [
  {
    'clock': '8:00 Pm',
    'isSelected': false,
  },
  {
    'clock': '8:30 Pm',
    'isSelected': false,
  },
  {
    'clock': '9:00 Pm',
    'isSelected': false,
  },
  {
    'clock': '9:30 Pm ',
    'isSelected': false,
  },
  {
    'clock': '10:00 Pm',
    'isSelected': false,
  },
  {
    'clock': '10:30 Pm',
    'isSelected': false,
  },
];
