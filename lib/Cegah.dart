import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Cara Pencegahan COVID-19"),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Container(
//              color: Colors.white,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(image: AssetImage('assets/noc.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
//              color: Colors.lightBlueAccent,
              child: Column(

                children: <Widget>[
                  SizedBox(height: 20),
                  Text('Cuci Tangan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5,child: Container(
//                    color: Colors.black12,
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Minimal 20 detik',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blueAccent.withOpacity(0.6)
                        ),
                      )

                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, right: 50, left: 50),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(image: AssetImage('assets/c1.png'),
                                  fit: BoxFit.cover
                              )
                          ),


                        ),
                        Container(
                          height: 58,
                          width: 250,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white)

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: <Widget>[
                                Text('Basahi tangan dengan air dan ambil sabun secukupnya',
                                  style: TextStyle
                                    (color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ), )
                              ],
                            ),
                          ),
                        ),

                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(image: AssetImage('assets/c2.png'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        Container(
                          height: 58,
                          width: 250,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white)

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: <Widget>[
                                Text('Gosok kedua tangan hingga ke sela-sela jari',
                                  style: TextStyle
                                    (color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ), )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(image: AssetImage('assets/c3.png'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        Container(
                          height: 58,
                          width: 250,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white)

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: <Widget>[
                                Text('Jangan lupa bagian belakang jari. Pakai teknik pengunci',
                                  style: TextStyle
                                    (color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ), )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(image: AssetImage('assets/c4.png'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        Container(
                          height: 58,
                          width: 250,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white)

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: <Widget>[
                                Text('Bersihkan juga bagian jempol,luar dan dalam',
                                  style: TextStyle
                                    (color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ), )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(image: AssetImage('assets/c5.png'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        Container(
                          height: 58,
                          width: 250,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white)

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: <Widget>[
                                Text('Basahi tanganmu dengan air bersih untuk membilas sabun',
                                  style: TextStyle
                                    (color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ), )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(image: AssetImage('assets/c6.png'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        Container(
                          height: 58,
                          width: 250,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white)

                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: <Widget>[
                                Text('Keringkan tangan dengan handuk. Jangan lupa keringkan keran air',
                                  style: TextStyle
                                    (color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ), )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(

                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                            //color: Colors.green ,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),


                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              children: <Widget>[
                                Text('Tetap diam dirumah', style: TextStyle
                                  (color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(image: AssetImage('assets/home.png'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        Container(

                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                            //color: Colors.green ,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),


                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              children: <Widget>[
                                Text('Pakai Masker', style: TextStyle
                                  (color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(image: AssetImage('assets/masker.png'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
  }
}