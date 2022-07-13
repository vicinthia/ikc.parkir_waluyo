import 'package:flutter/material.dart';
import 'package:eparkir_waluyo/models/master.dart';
import 'package:eparkir_waluyo/models/master_page.dart';
import 'package:eparkir_waluyo/widgets/master_card.dart';
import 'package:eparkir_waluyo/theme.dart';

class MasterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Container(
                    width: 1000,
                    height: MediaQuery.of(context).size.height * 3.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        DataTable(
                          columnSpacing: 30,
                          columns: [
                            DataColumn(label: Text('')),
                            DataColumn(label: Text('')),
                            DataColumn(label: Text('')),
                          ],
                          rows: [
                            DataRow(cells: [
                              DataCell(
                                Row(
                                  children: [
                                    Flexible(
                                      child: Text(
                                        'Tgl Transaksi :',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Flexible(
                                      child: Text(
                                        '10/6/2022',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              DataCell(Text('')),
                              DataCell(Text('')),
                            ]),
                            DataRow(cells: [
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Nama Tipe Kamar',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Harga',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Qty',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                            DataRow(cells: [
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Nama Tipe Kamar',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Harga',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Qty',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                            DataRow(cells: [
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Nama Tipe Kamar',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Harga',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Qty',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                            DataRow(cells: [
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Nama Tipe Kamar',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Harga',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Qty',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                            DataRow(cells: [
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Nama Tipe Kamar',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Harga',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Qty',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                            DataRow(cells: [
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Nama Tipe Kamar',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Harga',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Qty',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                            DataRow(cells: [
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Nama Tipe Kamar',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Harga',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              DataCell(
                                Flexible(
                                  child: Container(
                                    width: 200,
                                    child: TextFormField(
                                      cursorColor:
                                          Theme.of(context).cursorColor,
                                      // maxLength: 20,
                                      decoration: InputDecoration(
                                        labelText: 'Qty',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                            DataRow(cells: [
                              DataCell(Text('')),
                              DataCell(Text('')),
                              DataCell(
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
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
                                          'Print',
                                          style: TextStyle(
                                            fontFamily: "poppins",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
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
    );
  }
}
