import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscure = true;

  void _toglePass() {
    setState(() {
      _obscure = !_obscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f1f1),
      body: Center(
          child: Container(
        margin: EdgeInsets.only(top: 14, left: 14, right: 14),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const SizedBox(
                //   height: 120,
                // ),
                Image.asset("assets/images/logodinas.png"),
                Container(
                  margin: EdgeInsets.only(left: 6, right: 6),
                  child: Text(
                    "Puskesmas Nganjuk",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                Image.asset("assets/images/logopuskesmas.png"),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffd9d9d9),
              ),
              child: Text(
                "Aplikasi Pendaftaran Pasien\nPuskesmas Nganjuk",
                style: TextStyle(fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Image.asset("assets/images/ilustrasi.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
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
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: Icon(Icons.phone)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: TextField(
                obscureText: _obscure,
                style: TextStyle(fontSize: 14),
                showCursor: false,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Kata Sandi",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _toglePass();
                      });
                    },
                    child: _obscure
                        ? const Icon(
                            Icons.visibility_off,
                          )
                        : const Icon(
                            Icons.visibility,
                          ),
                  ),
                ),
              ),
            ),
            Container(
              // padding: EdgeInsets.only(top: 8, bottom: 8),
              margin: EdgeInsets.only(top: 14),
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ))),
                  child: Text(
                    "Masuk",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/forgotpw');
              }, 
              child: Text("Lupa Kata Sandi")),
            // Container(
            //   margin: EdgeInsets.only(top: 15),
            //   child: Center( 
            //       child: Text(
            //     "Lupa Kata Sandi?",
            //     style: TextStyle(color: Colors.grey[600], fontSize: 15),
            //   )),
            // ),
            Container(
              // margin: EdgeInsets.only(
              //   top: 10,
              // ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Belum Punya Akun? ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/register');
                    },
                    child: Text("Daftar")),
                // Text(
                //   "Daftar",
                //   style: TextStyle(
                //     fontWeight: FontWeight.bold,
                //     color: Theme.of(context).colorScheme.primary,
                //   ),
                // ),
              ]),
            )
          ],
        ),
      )),
    );
  }
}
