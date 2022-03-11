import 'dart:ui';

import 'package:doctor_reservation_cis/const/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SearchFieldText extends StatelessWidget {
  const SearchFieldText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: sizeFromWidth(context, 1.1),
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      // padding: const EdgeInsets.only(left: 10),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow:[
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 3
          ),
        ]
      ),
      child:
          Center(
            child: TextFormField(
              decoration:InputDecoration(
                contentPadding: const EdgeInsets.only(top: 20,left: 10),
                border: InputBorder.none,
                hintText: 'Search...',
                  hintStyle: TextStyle(
                       fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.grey.shade400,
                  ),
                suffixIcon: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: green,
                      borderRadius: BorderRadius.circular(5)
                  ),
                 child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30,
                      )),


                ),
              ),
            ),
          ),



    );

  }
}
