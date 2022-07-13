import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';
import 'package:http/http.dart' as http;

import 'package:eparkir_waluyo/landing_page.dart';

class daftarTransaksi extends StatefulWidget {
  @override
  _daftarTransaksiState createState() => _daftarTransaksiState();
}

class _daftarTransaksiState extends State<daftarTransaksi> {
//   StreamSubscription<String> _onWebViewUrlChanged;
// _onWebViewUrlChanged =
//     FlutterWebviewPlugin().onUrlChanged.listen((String url) {
//       if (url.contains('.pdf')) {
//         launchURL(url);
//       }
// });
  WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data')),
      body: Center(
        child: WebView(
          initialUrl: 'http://cobaticket.freecluster.eu/?i=1',
          javascriptMode: JavascriptMode.unrestricted,
          // onWebViewCreated: (WebViewController webViewController) {
          //   _controller = webViewController;
          // },
        ),
      ),
    );
  }
}
