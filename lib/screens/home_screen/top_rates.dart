import 'package:doctor_reservation_cis/const/doctor_list.dart';
import 'package:doctor_reservation_cis/screens/details/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopRate extends StatefulWidget {
  const TopRate({Key? key}) : super(key: key);

  @override
  _TopRateState createState() => _TopRateState();
}

class _TopRateState extends State<TopRate> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Top rate',
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
          height: 190,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: doctors.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(
                      name: doctors[index]['name'],
                      image: doctors[index]['image'],
                      job: doctors[index]['job'],
                    )));
                  },
                  child: Container(
                    height: 110,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 7.5),
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade400, blurRadius: 3)
                      ],
                      borderRadius: BorderRadius.circular(7.5),
                      color: Colors.white,
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: 80,
                            width: 70,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            color: Colors.white,
                            child: Image(
                              image: AssetImage('assets/' + doctors[index]['image']),
                              fit: BoxFit.fill,
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                doctors[index]['name'],
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Text(
                                    doctors[index]['job'],
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                  TextButton.icon(
                                    label: Text(
                                      doctors[index]['rate'],
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                    onPressed: (){},
                                    icon: const Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  TextButton.icon(
                                    label: Text(
                                      doctors[index]['km'],
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                    onPressed: null,
                                    icon: const Icon(
                                      Icons.location_on,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
