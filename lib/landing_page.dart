import 'package:eparkir_waluyo/pages/master/mobil.dart';
import 'package:eparkir_waluyo/pages/master/sepeda.dart';
import 'package:eparkir_waluyo/pages/master/transaksi/data_rekap.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplikasi"),
        actions: <Widget>[
          IconButton(
              // onPressed: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => bodyLogin()),
              //   );
              // },
              icon: Icon(Icons.logout))
        ],
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     children: <Widget>[
      //       UserAccountsDrawerHeader(
      //         accountName: Text("Admin"),
      //         accountEmail: Text("admin_ikoy@gmail.com"),
      //         currentAccountPicture: Hero(
      //             tag: "Profile",
      //             child: CircleAvatar(
      //               backgroundImage: AssetImage('assets/admin_ikoy.jpeg'),
      //               radius: 50,
      //             )),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("Dashboard"),
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => LandingPage()));
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.insert_chart_sharp),
      //         title: Text("Rekapitulasi"),
      //         onTap: () {
      //           Navigator.push(
      //               context, MaterialPageRoute(builder: (context) => rekap()));
      //         },
      //       )
      //     ],
      //   ),
      // ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Admin',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: "poppins",
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/profile_picture_user.png",
                      width: 48.0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 50,
                      height: 30,
                      child: RaisedButton(
                        // onPressed: () {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => bodyLogin()),
                        //   );
                        // },
                        color: Colors.white,
                        child: Icon(
                          Icons.logout,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 17.0),
                child: Text(
                  "Aplikasi\nElektronik Tiket",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 17.0),
                child: Text(
                  "Ticket",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "poppins",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(14.0),
                child: Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: <Widget>[
                    // SizedBox(
                    //   width: 160.0,
                    //   height: 165.0,
                    //   child: Card(
                    //     color: Colors.white,
                    //     child: Padding(
                    //       padding: EdgeInsets.all(0.0),
                    //       child: Column(
                    //         children: <Widget>[
                    //           SizedBox(
                    //             height: 10.0,
                    //           ),
                    //           Image.asset(
                    //             'assets/ticket.png',
                    //             height: 97,
                    //           ),
                    //           SizedBox(
                    //             height: 10.0,
                    //           ),
                    //           Container(
                    //             width: 330,
                    //             height: 40,
                    //             child: RaisedButton(
                    //               onPressed: () {
                    //                 // Navigator.push(
                    //                 //   context,
                    //                 //   MaterialPageRoute(
                    //                 //       builder: (context) => weekdaysMain()),
                    //                 // );
                    //               },
                    //               color: Colors.blue,
                    //               child: Text(
                    //                 'Weekdays',
                    //                 style: TextStyle(
                    //                   fontFamily: "poppins",
                    //                   fontSize: 18,
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      width: 160.0,
                      height: 165.0,
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Image.asset(
                                'assets/sepeda2.jpeg',
                                height: 97,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                width: 330,
                                height: 40,
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              sepedaTransaksi()),
                                    );
                                  },
                                  color: Colors.blue,
                                  child: Text(
                                    'Tiket Motor',
                                    style: TextStyle(
                                      fontFamily: "poppins",
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 165.0,
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Image.asset(
                                'assets/mobil4.jpeg',
                                height: 97,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                width: 330,
                                height: 40,
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              mobilTransaksi()),
                                    );
                                  },
                                  color: Colors.blue,
                                  child: Text(
                                    'Tiket Mobil',
                                    style: TextStyle(
                                      fontFamily: "poppins",
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 17.0),
                child: Text(
                  "Pengolahan Data",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "poppins",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(14.0),
                child: Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: <Widget>[
                    SizedBox(
                      width: 160.0,
                      height: 165.0,
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Image.asset(
                                'assets/coorporate.png',
                                height: 97,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                width: 330,
                                height: 40,
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              daftarTransaksi()),
                                    );
                                  },
                                  color: Colors.blue,
                                  child: Text(
                                    'Data Transaksi',
                                    style: TextStyle(
                                      fontFamily: "poppins",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 160.0,
                    //   height: 165.0,
                    //   child: Card(
                    //     color: Colors.white,
                    //     child: Padding(
                    //       padding: EdgeInsets.all(0.0),
                    //       child: Column(
                    //         children: <Widget>[
                    //           SizedBox(
                    //             height: 10.0,
                    //           ),
                    //           Image.asset(
                    //             'assets/folder.png',
                    //             height: 97,
                    //           ),
                    //           SizedBox(
                    //             height: 10.0,
                    //           ),
                    //           Container(
                    //             width: 330,
                    //             height: 40,
                    //             child: RaisedButton(
                    //               onPressed: () {
                    //                 // Navigator.push(
                    //                 //   context,
                    //                 //   MaterialPageRoute(
                    //                 //       builder: (context) =>
                    //                 //           daftarTransaksi()),
                    //                 // );
                    //               },
                    //               color: Colors.blue,
                    //               child: Text(
                    //                 'Data Transaksi',
                    //                 style: TextStyle(
                    //                   fontFamily: "poppins",
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 160.0,
                    //   height: 165.0,
                    //   child: Card(
                    //     color: Colors.white,
                    //     child: Padding(
                    //       padding: EdgeInsets.all(0.0),
                    //       child: Column(
                    //         children: <Widget>[
                    //           SizedBox(
                    //             height: 10.0,
                    //           ),
                    //           Image.asset(
                    //             'assets/folder.png',
                    //             height: 97,
                    //           ),
                    //           SizedBox(
                    //             height: 10.0,
                    //           ),
                    //           Container(
                    //             width: 330,
                    //             height: 40,
                    //             child: RaisedButton(
                    //               onPressed: () {
                    //                 Navigator.push(
                    //                   context,
                    //                   MaterialPageRoute(
                    //                       builder: (context) => ScCoorporate()),
                    //                 );
                    //               },
                    //               color: Colors.blue,
                    //               child: Text(
                    //                 'Olah Coorporate',
                    //                 style: TextStyle(
                    //                   fontFamily: "poppins",
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
