import 'package:eparkir_waluyo/models/master.dart';
import 'package:eparkir_waluyo/pages/eror_pages.dart';

import 'package:eparkir_waluyo/pages/master/master_page.dart';
import 'package:eparkir_waluyo/pages/master/transaksi/input.dart';
import 'package:eparkir_waluyo/theme.dart';
import 'package:flutter/material.dart';

class MasterCard extends StatelessWidget {
  final Master master;

  MasterCard(this.master);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InputPage(),
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          height: 150,
          width: 120,
          color: Color(0xffF6F7F8),
          child: Column(
            children: [
              SizedBox(
                height: 9,
              ),
              Stack(
                children: [
                  Image.asset(
                    master.imageUrl,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                master.name,
                style: blackTextStyle.copyWith(
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
