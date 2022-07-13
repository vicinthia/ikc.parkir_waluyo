// import 'package:parkir_duta/models/laporan.dart';
// import 'package:parkir_duta/pages/eror_pages.dart';

// import 'package:parkir_duta/pages/laporan/laporan_harian_page.dart';
// import 'package:parkir_duta/theme.dart';
// import 'package:flutter/material.dart';

// class LaporanHarianCard extends StatelessWidget {
//   final Laporan laporan;

//   LaporanHarianCard(this.laporan);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => Laporan_harian_page(),
//           ),
//         );
//       },
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(18),
//         child: Container(
//           height: 150,
//           width: 120,
//           color: Color(0xffF6F7F8),
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 9,
//               ),
//               Stack(
//                 children: [
//                   Image.asset(
//                     laporan.imageUrl,
//                     width: 100,
//                     height: 100,
//                     fit: BoxFit.cover,
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 11,
//               ),
//               Text(
//                 laporan.name,
//                 style: blackTextStyle.copyWith(
//                   fontSize: 11,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
