import 'package:flutter/material.dart';
import 'trapesiumpage.dart';
import 'kubuspage.dart';
import 'haripage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "KUIS TEKNOLOGI PEMROGRAMAN MOBILE",
          style: TextStyle(fontWeight: FontWeight.w900),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                child: Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/Nathaleon.jpg')),
                )),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 235, 221, 203),
              ),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nama   : Nathaleon Ranggainaya Dian Kuncoro",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "NIM    : 123220015",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Kelas  : IF-B",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Hobi : Bermain Gitar",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              constraints: BoxConstraints(minHeight: 80),
              padding: EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TrapesiumPage()));
                  },
                  child: Text(
                    "TRAPESIUM",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ),
            Container(
              width: double.infinity,
              constraints: BoxConstraints(minHeight: 80),
              padding: EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => KubusPage()));
                  },
                  child: Text("KUBUS",
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ),
            Container(
              width: double.infinity,
              constraints: BoxConstraints(minHeight: 80),
              padding: EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HariPage()));
                  },
                  child: Text("HITUNG HARI",
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ),
          ],
        ),
      ),
    );
  }
}
