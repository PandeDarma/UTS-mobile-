import 'package:flutter/material.dart';
//import 'MyAppl.dart';
import 'Cegah.dart';
import 'Hasil.dart';
void main(){
  runApp(new MaterialApp(
    theme: ThemeData.dark(),
    home: new Home(),
    routes: <String, WidgetBuilder>{
      '/Halsatu' : (BuildContext context) => new Home(),
      '/Haldua' : (BuildContext context) => new MyProfil(),

    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  int tinggi = 0;
  int berat = 0;
  int tahun = 0;
  int p1 = 0;
  int p2 = 0;
  int p3 = 0;
  int p4 = 0;


  void _pilihP2(int value){
    setState(() {
      p2 = value;
    });
  }

  void _pilihP1(int value){
    setState(() {
      p1 = value;
    });
  }
  void _pilihP3(int value){
    setState(() {
      p3 = value;
    });
  }

  void _pilihP4(int value){
    setState(() {
      p4 = value;
    });
  }
  var _nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.view_list),
        title: new Text('COVID-19 CHEK'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.device_unknown),
            onPressed: (){
              Navigator.pushNamed(context, '/Haldua');
            },
          )
        ],
      ),

      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
              children: <Widget>[
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new TextField(
                  controller: _nama,
                  decoration: new InputDecoration(
                      hintText: "Masukkan Nama Anda",
                      labelText: "Masukan Nama Anda",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0)
                      )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new TextField(
                  onChanged: (txt) {
                    setState(() {
                      tahun = int.parse(txt);
                    });
                  },

                  keyboardType: TextInputType.number,
                  maxLength: 2,
                  decoration: new InputDecoration(
                      hintText: "Masukkan Umur",
                      labelText: "Umur Anda",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0)
                      )
                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                Text('Apakah anda pernah berkontak langsung dengan penderita COVID-19 atau menguji zona merah?',
                                  style: TextStyle
                                    (color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold
                                  ), ),
                new RadioListTile(
                  value: 1,
                  groupValue: p1,
                  title: new Text("Ya"),
                  onChanged: (int value){
                    _pilihP1(value);
                  },
                ),
                new Padding(padding: new EdgeInsets.only(top: 0.0)),
                new RadioListTile(
                  value: 2,
                  groupValue: p1,
                  title: new Text("Tidak"),
                  onChanged: (int value){
                    _pilihP1(value);
                  },
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                Text('Apakah anda mengalami deman tinggi?',
                  style: TextStyle
                    (color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                  ), ),
                new RadioListTile(
                  value: 1,
                  groupValue: p2,
                  title: new Text("Ya"),
                  onChanged: (int value){
                    _pilihP2(value);
                  },
                ),
                new Padding(padding: new EdgeInsets.only(top: 0.0)),
                new RadioListTile(
                  value: 2,
                  groupValue: p2,
                  title: new Text("Tidak"),
                  onChanged: (int value){
                    _pilihP2(value);
                  },
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                Text('Apakah anda mengalami batuk-batuk?',
                  style: TextStyle
                    (color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                  ), ),
                new RadioListTile(
                  value: 1,
                  groupValue: p3,
                  title: new Text("Ya"),
                  onChanged: (int value){
                    _pilihP3(value);
                  },
                ),
                new Padding(padding: new EdgeInsets.only(top: 0.0)),
                new RadioListTile(
                  value: 2,
                  groupValue: p3,
                  title: new Text("Tidak"),
                  onChanged: (int value){
                    _pilihP3(value);
                  },
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                Text('Apakah anda mengalami sesak nafas?',
                  style: TextStyle
                    (color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                  ), ),
                new RadioListTile(
                  value: 1,
                  groupValue: p4,
                  title: new Text("Ya"),
                  onChanged: (int value){
                    _pilihP4(value);
                  },
                ),
                new Padding(padding: new EdgeInsets.only(top: 0.0)),
                new RadioListTile(
                  value: 2,
                  groupValue: p4,
                  title: new Text("Tidak"),
                  onChanged: (int value){
                    _pilihP4(value);
                  },
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0)),


                new Padding(padding: new EdgeInsets.only(top: 20.0)),


                Container(
                  //height: double.infinity,
                  margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                  child: RaisedButton(
                    onPressed: () {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext) =>
                        new Hasil(nama_lengkap : _nama.text,tahun_lahir: tahun, PL1:p1, PL2:p2, PL3:p3, PL4:p4),
                      );
                      Navigator.of(context).push(route);
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.white70,
                    textColor: Colors.white,
                    child: Text(
                      'Lihat Hasil',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),

                    ),
                  ),
                ),
                Container(
                  //height: double.infinity,
                  margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                  child: RaisedButton(
                    onPressed: () {
                        Navigator.pushNamed(context, '/Haldua');
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text(
                      'Cara Pencegahan',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),

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