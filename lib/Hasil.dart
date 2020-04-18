import 'package:flutter/material.dart';
import 'dart:math';
import 'Cegah.dart';

class Hasil extends StatelessWidget {


  Hasil({ @required this.nama_lengkap, @required this.tahun_lahir, @required this.PL1, @required this.PL2, @required this.PL3, @required this.PL4});
  final int tahun_lahir;
  final int PL1;
  final int PL2;
  final int PL3;
  final int PL4;
  final String nama_lengkap;





  @override
  Widget build(BuildContext context) {
    String ket;
    if (PL1==1){
      if(PL2==1){
        if(PL3==1){
          if(PL4==1)ket="Segeralah periksakan diri anda ke rumah sakit rujukan COVID-19"; //
          else if (PL4==2) ket="Segera lakukan pemeriksaan diri kerumah sakit terdekat";
        } else if(PL3==2){
          if (PL4==1) ket="Segera lakukan pemeriksaan diri kerumah sakit terdekaegera lakukan pemeriksaan diri kerumah sakit terdekat";
          else if(PL4==2) ket= "Istirahat total dan minum obat, lakukan isolasi dirumah. Jika dalam 4 hari tidak membaik segeralah periksakan diri ke dokter";
        }
      }else if (PL2==2){
        if(PL3==1){
          if(PL4==1)ket="Segera lakukan pemeriksaan diri kerumah sakit terdekat"; //
          else if (PL4==2) ket="Tetap dirumah dan minum obat, jika tidak kunjung membaik dalam 4 hari segera periksakan kedokter";
        } else if(PL3==2){
          if (PL4==1) ket="Perisakan diri dokter dan istirahat";
          else if(PL4==2) ket= "Tetap dirumah, lakukan isolasi diri 14 hari";
        }
      }
    }else if (PL1==2){
      if(PL2==1){
        if(PL3==1){
          if(PL4==1)ket="Segera lakukan pemeriksaan diri kerumah sakit terdekaegera lakukan pemeriksaan diri kerumah sakit terdeka"; //
          else if (PL4==2) ket="Minum obat dan istirahat total,jika tidak membaik selama 4 hari segara periksakan diri ke dokter ";
        } else if(PL3==2){
          if (PL4==1) ket="Periksakan diri anda ke dokter dan jaga kesehatan";
          else if(PL4==2) ket= "Minum obat dan istirahat, jika tidak membaik selama 4 hari segara periksakan diri ke dokter";
        }
      }else if (PL2==2){
        if(PL3==1){
          if(PL4==1)ket="Periksakan diri anda kedokter dan isolasi diri selama 14 hari"; //
          else if (PL4==2) ket="Minum obat dan pakai masker, jika tidak membaik selama 4 hari segara hubungi dokter";
        } else if(PL3==2){
          if (PL4==1) ket="Perisakan diri kedokter dan lakukan isolasi diri selama 14 hari";
          else if(PL4==2) ket= "ANDA SEHAT";
        }
      }
    }



    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Hasil Test'),
      ),
      body: Container(
//        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20,child: Container(
//              color: Colors.white,
            ),),
            new Text(
              "Nama : ${nama_lengkap}",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.white
              ),
            ),
            SizedBox(height: 10,child: Container(
//              color: Colors.white,
            ),),
            new Text(
              "Umur : ${tahun_lahir} Tahun",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.white
              ),
            ),

            SizedBox(height: 20,child: Container(
//              color: Colors.white,

            ),),
            Text(
              ket,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Colors.redAccent,
              ),
            ),


            Text(
              'Tetap jaga diri anda',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white70,
              ),
            ),

            Text(
              '#DIRUMAHAJA',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),

      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        child: RaisedButton(

          color: Colors.black54,
          child: Text('BACK',
            style: TextStyle(
                fontSize: 30
            ),

          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}