import 'package:salsabillaazzahra_uaspmobile/halamanutama.dart';
import 'package:flutter/material.dart';

class profildeveloper extends StatelessWidget {
  const profildeveloper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil Developer",
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 250, 158, 188),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 1.0),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/fotoara.jpg'),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5.0, 50.0, 5.0, 50.0),
              margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 30.0),
              height: 400,
              width: double.infinity,
              child: Card(
                child: Container(
                  color: Color.fromARGB(255, 215, 130, 223),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20, right: 50, left: 70, bottom: 15),
                        child: Text(
                          'Biodata Developer',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Nama : SALSABILLA AZZAHRA',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'NPM  : 2110020080',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Kelas  : 5A SI NREG BANJARMASIN ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'WA  : 089524701182',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Alamat : Jl. YOS SUDARSO RT.34 NO.04 BANJARMASIN ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 121, 114, 163),
                    onPrimary: Color.fromARGB(255, 208, 141, 224),
                    onSurface: Color.fromARGB(255, 243, 142, 218),
                    shadowColor: Colors.white,
                    minimumSize: Size(200, 40),
                    animationDuration: Duration(milliseconds: 200),
                    elevation: 2,
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {
                    Route pindah =
                        MaterialPageRoute(builder: (context) => halamanutama());
                    Navigator.push(context, pindah);
                  },
                  child: Text(
                    "Kembali",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
