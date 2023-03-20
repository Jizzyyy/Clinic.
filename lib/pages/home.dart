import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:puskesmas_nganjuk2/others/colorThemes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final incolor = AppColors();
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selamat Datang",
                style: TextStyle(
                  color: incolor.cgrey,
                  fontSize: 14,
                ),
              ),
              Text(
                "Budiyono Astaman",
                style: TextStyle(
                    color: incolor.cblack,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ],
          )
        ]),
        backgroundColor: Color(0xffF1F1F1),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        margin: EdgeInsets.all(14),
        child: Column(children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.symmetric(vertical: 14),
            child: Text(
              "Silahkan Pilih Layanan",
              style: TextStyle(
                color: incolor.cblack,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Container(
                        margin: EdgeInsets.only(top: 8, bottom: 8),
                        padding: EdgeInsets.all(6),
                        // decoration: BoxDecoration(boxShadow: <BoxShadow>[
                        //   BoxShadow(
                        //     color: incolor.cgrey,
                        //     blurRadius: 2.0,
                        //     offset: Offset(0, 0.75),
                        //   ),
                        // ], color: Colors.white),
                        child: Column(children: [
                          SizedBox(
                            child: Image.asset("assets/images/heart.png"),
                          ),
                          Text(
                            "Pelayanan Gawat\nDarurat",
                            textAlign: TextAlign.center,
                            style: TextStyle(),
                          ),
                        ]),
                      )),
                ],
              )
            ]),
          )
        ]),
      ),
    );
  }
}
