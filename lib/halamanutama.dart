import 'package:salsabillaazzahra_uaspmobile/halamanhitunglingkaran.dart';
import 'package:salsabillaazzahra_uaspmobile/halamanhitungpersegi.dart';
import 'package:salsabillaazzahra_uaspmobile/profile.dart';
import 'package:flutter/material.dart';

class halamanutama extends StatelessWidget {
  const halamanutama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.view_list_rounded),
          title: Text("Halaman Utama",
              style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 168, 122, 248),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  onPrimary: Colors.white,
                  onSurface: Colors.purple,
                  shadowColor: Colors.white,
                  minimumSize: Size(200, 40),
                  animationDuration: Duration(milliseconds: 200),
                  elevation: 2,
                  shape: StadiumBorder(),
                ),
                onPressed: () {
                  Route pindah = MaterialPageRoute(
                      builder: (context) => halamanhitungpersegi());
                  Navigator.push(context, pindah);
                },
                icon: Icon(Icons.square_rounded),
                label: Text(
                  "Perhitungan Luas Persegi",
                  style: TextStyle(fontSize: 23),
                ),
              ),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white,
                    onSurface: Colors.green,
                    shadowColor: Colors.white,
                    minimumSize: Size(200, 40),
                    animationDuration: Duration(milliseconds: 200),
                    elevation: 2,
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {
                    Route pindah = MaterialPageRoute(
                        builder: (context) => halamanhitunglingkaran());
                    Navigator.push(context, pindah);
                  },
                  icon: Icon(Icons.circle_rounded),
                  label: Text(
                    'Perhitungan Luas Lingkaran',
                    style: TextStyle(fontSize: 23),
                  )),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                    onSurface: Colors.blue,
                    shadowColor: Colors.white,
                    minimumSize: Size(200, 40),
                    animationDuration: Duration(milliseconds: 200),
                    elevation: 2,
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {
                    Route pindah = MaterialPageRoute(
                        builder: (context) => profildeveloper());
                    Navigator.push(context, pindah);
                  },
                  icon: Icon(Icons.people_alt_rounded),
                  label: Text(
                    'Profil Developer',
                    style: TextStyle(fontSize: 23),
                  )),
            ],
          ),
        ));
  }
}
