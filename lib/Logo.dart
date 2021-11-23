import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Logo extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset('img/logo_ubu.png',width:250,height:250,),
        "APP Name".text.xl2.italic.make(),
        "UBU City".text.light.white.wider.lg.make(),
      ],
    );
  }
}