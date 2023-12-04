import 'package:flutter/material.dart';

class Book extends StatefulWidget {
  const Book({super.key});

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
  String dropdownvalue = 'District';

  // List of items in our dropdown menu
  var items = [
    'District',
    'Kasargod',
    'kanur',
    'Kozhikode',
    'Wayanad',
    'Malapuram',
    'Palakad',
    'Thrishur',
    'Ernakulam',
    'Eduki',
    'Kottayam',
    'alapuzha',
    'pathanam thitta',
    'kollam',
    'Thiruvananthapuram',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Book Your Car'),
          centerTitle: true),
      body: Form(
        child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Card(
                        child: Image(
                            image: AssetImage('assets/images/whitecar.jpg')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 35, top: 1, bottom: 1, right: 1),
                      child: Text(
                        'summary',
                        style: TextStyle(
                            color: Colors.white54,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 25, bottom: 10, top: 8, left: 25),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Card(
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Mercedes Benz CLA Class',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 20)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, top: 20, bottom: 8, right: 8),
                                  child: Row(
                                    children: [
                                      Icon(Icons.currency_rupee),
                                      Text(
                                        '71,00,000',
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Divider(color: Colors.black),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 8, bottom: 15, top: 1, left: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Total'),
                                      Text(
                                        '71,00,000',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 1, bottom: 1, top: 1, left: 35),
                      child: Text(
                        'Enter your personal details',
                        style: TextStyle(
                            color: Colors.white54,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, top: 7, bottom: 8, right: 25),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Name*',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, top: 7, bottom: 8, right: 25),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Address*',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, top: 7, bottom: 8, right: 25),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Pincode*',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, top: 7, bottom: 8, right: 25),
                      child: ListTile(
                        leading: Text('District',
                            style: TextStyle(color: Colors.white)),
                        tileColor: Colors.white24,
                        shape: OutlineInputBorder(),
                        trailing: DropdownButton(
                          dropdownColor: Colors.black,
                          iconSize: 40,
                          style: TextStyle(color: Colors.white),
                          borderRadius: BorderRadius.circular(27),
                          value: dropdownvalue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items,
                                  style: TextStyle(color: Colors.white)),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, top: 7, bottom: 8, right: 25),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Pan Number*',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, top: 7, bottom: 8, right: 25),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'AADHAAR Number*',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, top: 7, bottom: 8, right: 25),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Advance Amount Eg:10000*',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(width: double.infinity,height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text('Upload your Adharcard',style: TextStyle(color: Colors.white)),
                                SizedBox(width: 170,height: 160,
                                  child: InkWell(onTap:() {

                                  },
                                    child: Card(color: Colors.white24,
                                      child: Icon(Icons.image),
                                    ),
                                  ),
                                )
                              ],
                            ), Column(
                              children: [
                                Text('Upload your PAN Card',style: TextStyle(color: Colors.white)),
                                SizedBox(width: 170,height: 160,
                                  child: InkWell(onTap: () {

                                  },
                                    child: Card(color: Colors.white24,
                                      child: Icon(Icons.image),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.brown),fixedSize: MaterialStatePropertyAll(Size(190, 50))),onPressed: () {

                          }, child: Text('proceed')),
                        ],
                      ),
                    )
                  ]),
            )),
      ),
    );
  }
}
