// import 'dart:html';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:eparkir_waluyo/auth/Screens/Login/components/background.dart';
import 'package:eparkir_waluyo/auth/components/rounded_button.dart';
import 'package:eparkir_waluyo/auth/components/rounded_input_field.dart';
import 'package:eparkir_waluyo/auth/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:eparkir_waluyo/landing_page.dart';
import 'package:http/http.dart' as http;
import 'package:cool_alert/cool_alert.dart';

class bodyLogin extends StatefulWidget {
  @override
  State<bodyLogin> createState() => _bodyLoginState();
}

class _bodyLoginState extends State<bodyLogin> {
  String username, password, name;
  String alert = "Siap Login";
  String pesan = "User Tidak dikenali";

  bool passenable = true;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController usernameInput = new TextEditingController();
  TextEditingController passwordInput = new TextEditingController();
  get sizedbox => null;

// buat method proses login
  void prosesLogin() async {
    // buat sebuah variable untuk menampung proses request
    final dataLogin = await http.post(
        Uri.parse("http://eticket.ikc.co.id/api/admin/mylogin"),
        body: {"username": usernameInput.text, "password": passwordInput.text});

    var dataAdmin = json.decode(dataLogin.body);

    if (dataAdmin.length < 1) {
      // jika user tidak ada, tampilkan alert data user tidak ada
      setState(() {
        alert = "Data User Tidak Dikenali";
      });
      CoolAlert.show(
          context: context,
          type: CoolAlertType.error,
          title: "Gagal Masuk ",
          text: "Username / Password Anda Salah!",
          confirmBtnText: "Ok");
      clearValues();
    } else {
      // jika data user ada set username dan password
      setState(() {
        username = dataAdmin[0]["username"];
        password = dataAdmin[0]["password"];
      });
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => LandingPage()));
      await CoolAlert.show(
          context: context,
          type: CoolAlertType.success,
          title: "Berhasil Masuk ",
          text: "Selamat Datang Admin!",
          confirmBtnText: "Ok");
    }
  }

  clearValues() {
    usernameInput.text = '';
    passwordInput.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 200.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.badge_rounded, size: 35),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "SIGN IN e-Ticket",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.right,
                  )
                ],
              ),
              SizedBox(
                height: 35,
              ),
              TextFormField(
                controller: usernameInput,
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: "Masukkan Username Anda...",
                  labelText: "Username",
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              TextFormField(
                  controller: passwordInput,
                  obscureText: passenable,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      isDense: true,
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      hintText: "Masukkan Password Anda...",
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      suffix: IconButton(
                          onPressed: () {
                            //add Icon button at end of TextField
                            setState(() {
                              //refresh UI
                              if (passenable) {
                                //if passenable == true, make it false
                                passenable = false;
                              } else {
                                passenable =
                                    true; //if passenable == false, make it true
                              }
                            });
                          },
                          icon: Icon(passenable == true
                              ? Icons.remove_red_eye
                              : Icons.password)))),
              SizedBox(
                height: 28,
              ),
              Center(
                child: SizedBox(
                  height: 40,
                  width: 260,
                  child: ElevatedButton(
                    onPressed: () {
                      prosesLogin();
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
