// ignore_for_file: must_be_immutable

import 'package:doctor_reservation_cis/const/color.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  String? name, job, image;

  ProfileItem(
      {required this.name, required this.image, required this.job, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeFromHeight(context, 3.7),
      child: Stack(
        children: [
          Container(
            height: sizeFromHeight(context, 4),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: darkBlue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 130,
                  width: 120,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: darkBlue,
                      image: DecorationImage(
                          image: AssetImage('assets/' + image!),
                          fit: BoxFit.fill)),
                ),
                Column
                  (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      name!,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      job!,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: ListView.builder(
                          itemCount: 5,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20,
                            );
                          }),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 50,
              width: 50,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.location_on),
                  color: Colors.yellow,
                  iconSize: 35,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
