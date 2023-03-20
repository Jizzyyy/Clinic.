import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _obscure = true;
  bool _isChecked = true;
  String _text = '';

  void _toglePass() {
    setState(() {
      _obscure = !_obscure;
    });
  }

  // bool rememberMe = false;

  // void _onRememberMeChanged(bool newValue) => setState(() {
  //       rememberMe = newValue;

  //       if (rememberMe) {
  //         // TODO: Here goes your functionality that remembers the user.
  //       } else {
  //         // TODO: Forget the user
  //       }
  //     });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Daftar',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 14, left: 14, right: 14),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                child: TextField(
                  style: TextStyle(fontSize: 17),
                  showCursor: false,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "Nama",
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                child: TextField(
                  style: TextStyle(fontSize: 17),
                  showCursor: false,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(18),
                  ],
                  decoration: InputDecoration(
                    hintText: "NIK",
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                child: TextField(
                  style: TextStyle(fontSize: 17),
                  showCursor: false,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(13),
                  ],
                  decoration: InputDecoration(
                    hintText: "Nomor Telepon Whatsapp",
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                child: TextField(
                  obscureText: _obscure,
                  style: TextStyle(fontSize: 17),
                  showCursor: false,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: "Kata Sandi",
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
              SizedBox(
                height: 35,
              ),
              Container(
                child: TextField(
                  style: TextStyle(fontSize: 17),
                  showCursor: false,
                  decoration: InputDecoration(
                    hintText: "Alamat",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50),
                child: Column(
                  children: <Widget>[
                    Checkbox(
                        value: _isChecked,
                        checkColor: Colors.white,
                        onChanged: (val) {
                          setState(() {
                            // if (_isChecked == true {}
                          });
                        }),
                  ],
                ),
              )
              // Container(
              //   padding: EdgeInsets.all(10.0),
              //   child: Column(
              //     children: <Widget>[
              //       new Checkbox(
              //           value: checkBoxValue,
              //           activeColor: Colors.green,
              //           onChanged: (bool newValue) {
              //             setState(() {
              //               checkBoxValue = newValue;
              //             });
              //             Text('Remember me');
              //           }),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
