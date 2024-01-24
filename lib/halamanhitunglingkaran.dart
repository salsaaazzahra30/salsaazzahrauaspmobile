import 'package:salsabillaazzahra_uaspmobile/hasillingkaran.dart';
import 'package:flutter/material.dart';

class halamanhitunglingkaran extends StatefulWidget {
  @override
  State<halamanhitunglingkaran> createState() => _halamanhitunglingkaranState();
}

class _halamanhitunglingkaranState extends State<halamanhitunglingkaran> {
  int p = 0;
  int r2 = 0;

  var _nama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hitung Luas Lingkaran",
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 66, 141, 202),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 20.0)),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            p = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "π",
                            suffix: Text('cm'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            filled: true,
                            hintText: 'π'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            r2 = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "r²",
                            suffix: Text('cm'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            filled: true,
                            hintText: 'r²'),
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 117, 146, 118),
                      onPrimary: Colors.white,
                      onSurface: const Color.fromARGB(255, 117, 146, 118),
                      shadowColor: Colors.white,
                      minimumSize: Size(200, 45),
                      animationDuration: Duration(milliseconds: 200),
                      elevation: 2,
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {
                      var Route = MaterialPageRoute(
                        builder: (BuildContext) => hasillingkaran(
                          p: p,
                          r2: r2,
                        ),
                      );
                      Navigator.of(context).push(Route);
                    },
                    child: Text(
                      "Hitung",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
