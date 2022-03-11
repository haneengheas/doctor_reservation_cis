import 'package:doctor_reservation_cis/const/categroy_list.dart';
import 'package:doctor_reservation_cis/const/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CategroyList extends StatefulWidget {
  const CategroyList({Key? key}) : super(key: key);

  @override
  _CategroyListState createState() => _CategroyListState();
}

class _CategroyListState extends State<CategroyList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Category',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
              Text(
                'See all',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: category.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 120,
                  width: 110,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 7.5),
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.5),
                    color: green,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       ImageIcon(AssetImage('assets/'+category[index][0]),size: 35,color: Colors.white,
                        ),
                       Text(
                        category[index][1],
                        style: const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.5),
                            color: Colors.white10.withOpacity(.2),
                          ),
                          child:  Text(
                          category[index][2],
                            style: const TextStyle(color: Colors.white, fontSize: 12),
                          )),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
