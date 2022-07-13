import 'package:flutter/material.dart';
import 'package:eparkir_waluyo/pages/eror_pages.dart';
import 'package:eparkir_waluyo/theme.dart';

void main() => runApp(User_page());

class User_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Tabel Master User',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 95,
                      height: 30,
                      child: TextButton(
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.blue),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Fcoorporate()),
                          // );
                        },
                        child: Text(
                          "Tambah",
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: "poppins",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(
                      width: 1000,
                      height: 500,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          DataTable(
                            columnSpacing: 55,
                            columns: [
                              DataColumn(label: Text('No')),
                              DataColumn(label: Text('Id User')),
                              DataColumn(label: Text('Username')),
                              DataColumn(label: Text('Level')),
                              DataColumn(label: Text('Aksi')),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(Text('1')),
                                DataCell(Text('1')),
                                DataCell(Text('Dispenda')),
                                DataCell(Text('1')),
                                DataCell(
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width: 95,
                                        height: 30,
                                        child: RaisedButton(
                                          onPressed: () {
                                            // Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //       builder: (context) =>
                                            //           Ecoorporate()),
                                            // );
                                          },
                                          color: Colors.blue,
                                          child: Text(
                                            'Edit',
                                            style: TextStyle(
                                              fontFamily: "poppins",
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Container(
                                        width: 95,
                                        height: 30,
                                        child: RaisedButton(
                                          onPressed: () {
                                            // Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(
                                            //       builder: (context) =>
                                            //           NoFileScreen()),
                                            // );
                                          },
                                          color: Colors.red,
                                          child: Text(
                                            'Delete',
                                            style: TextStyle(
                                              fontFamily: "poppins",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ])
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
