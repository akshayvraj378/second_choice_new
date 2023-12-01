import 'package:flutter/material.dart';

class trashing extends StatefulWidget {
  const trashing({super.key});

  @override
  State<trashing> createState() => _trashingState();
}

class _trashingState extends State<trashing> {
  @override
  Widget build(BuildContext context) {
   Size size= MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.purple,
      body: ListView(children: [
        Container(width: size.width,height: size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/rangerover.jpg'))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(80),
                child: Text('Car For YOu'),
              ),
              SizedBox(
                width: double.infinity,
                height: 400,
                child: SingleChildScrollView(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Jeep W186X LandSUV',
                              style: TextStyle(
                                backgroundColor: Colors.transparent,
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today_rounded,
                                        color: Colors.brown),
                                    Text('2014')
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.speed_rounded,
                                        color: Colors.brown),
                                    Text('59000 KM')
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.info_outline_rounded,
                                        color: Colors.brown),
                                    Text('Diesel')
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Center(
                                  child: Row(
                                    children: [
                                      Icon(Icons.currency_rupee),
                                      Text(
                                        '71,00,000',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w700),
                                      )
                                    ],
                                  ),
                                ),
                                Icon(Icons.favorite_border)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Divider(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.calendar_month,
                                        color: Colors.brown),
                                    Text('2014'),
                                    Text('Year')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.imagesearch_roller,
                                        color: Colors.brown),
                                    Text('Black'),
                                    Text('Color')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.speed_outlined,
                                        color: Colors.brown),
                                    Text('59000'),
                                    Text('Kms')
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.person_2_outlined,
                                        color: Colors.brown),
                                    Text('2'),
                                    Text('Owner')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.directions_car_outlined,
                                        color: Colors.brown),
                                    Text('Diesel'),
                                    Text('Fuel')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.speed_outlined,
                                        color: Colors.brown),
                                    Text('__'),
                                    Text('Mileage')
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.network_ping_rounded,
                                        color: Colors.brown),
                                    Text('4461'),
                                    Text('Engine cc')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.verified_user_outlined,
                                        color: Colors.brown),
                                    Text('25/07/2025'),
                                    Text('Insurance')
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.ad_units_sharp,
                                        color: Colors.brown),
                                    Text('BL6'),
                                    Text('Polution')
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Divider(),
                          )
                        ]
                        // ... Other C]),
                        ),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
