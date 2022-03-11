import 'package:doctor_reservation_cis/const/color.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: darkBlue,
      elevation: 0,
      leading: IconButton(
          onPressed: () {}, icon: const Icon(Icons.arrow_back_outlined)),
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
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          width: 35,
          height: 30,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/h.jpeg'), fit: BoxFit.fitHeight),
              color: darkBlue,
              borderRadius: BorderRadius.circular(10)),
        ),
      ],
    );
  }
}
