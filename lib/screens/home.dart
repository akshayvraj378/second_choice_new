import 'package:flutter/material.dart';
class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [Text('Vehicle Details',style: TextStyle(color: Colors.white)),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 300,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8,
                          color: Colors.grey,
                        )
                      ],
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/whitecar.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 13, top: 0, left: 40, right: 40),
              child: Card(
                color: Colors.white70,
                child: Column(
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
                    // ... Other Card contents
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 400,
              child: Card(
                color: Colors.white70,
                margin: EdgeInsets.all(45.0),
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: GridView.builder(
                    itemCount: 15,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: Colors.grey,
                        child: Center(
                          child: Text(
                            'Item $index',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
