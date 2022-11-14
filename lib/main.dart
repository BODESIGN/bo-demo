import 'package:bo/bo/componantes/bo_main/bo_main.dart';
import 'package:bo/screen/home.dart';
import 'package:bo/screen/seconnect.dart';
import 'package:flutter/material.dart';

void main() {
  // FIREBASE

  // run APP
  runApp($MAIN(title: 'AMOI')
    ..initialRoot = '/SeConnect'
    ..screens = [
      const SECONNECT(rootName: '/SeConnect'),
      const MyHomePage(rootName: 'HOME'),
    ]
    ..actionOnBuilder = () {
      print('Hello BO!!!');
    });
}
