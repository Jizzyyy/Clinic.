import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/services.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  
  
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Lupa Kata Sandi",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/notelp.png",
                    height: 120,
                    width: 120,
                    ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Center(
                  child: Text(
                    "Masukkan nomor telepon terlebih dahulu untuk melakukan verifikasi OTP",
                  textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                style: TextStyle(fontSize: 14),
                showCursor: false,
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(13),
                ],
                decoration: InputDecoration(
                    hintText: "Nomor Telepon",
                    filled: true,
                    fillColor: Color.fromARGB(255, 218, 218, 218),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Container(
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 15, right: 15),
              margin: EdgeInsets.only(top: 20),
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/verif');
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ))),
                  child: Text(
                    "Kirim",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
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


