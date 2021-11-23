import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Logo.dart';
import 'Register.dart';

class Login extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<Login> {
  bool checked = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [const Color(0xff49abf8),const Color(0xffdcc91a)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomCenter,
                stops: [0.0,0.8],
                tileMode: TileMode.mirror
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Logo(),
                  HeightBox(10),
                  "Email".text.size(22).yellow100.make(),

                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)))),
                  ).p4().px24(),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)))),
                  ).p4().px24(),

                  HStack([
                    Checkbox(
                      value: checked, onChanged: (bool) { checked ;},

                    ),
                    "Remember Me".text.make().py16()

                  ]),
                  HStack([
                    VxBox(child: "Get Started".text.white.makeCentered().p16()).green600.roundedLg.make(),
                  ]),
                  GestureDetector(
                    onTap: (){
                      print("Sign In");
                    },
                    child: HStack([
                      "Forgot Password?".text.white.makeCentered(),
                    ]).centered().p4(),
                  ),
                  HStack([
                    VxBox(child:  FaIcon(FontAwesomeIcons.facebookF,color: Colors.white,size: 30,).p20()).blue700.roundedFull.make(),
                    VxBox(child:  FaIcon(FontAwesomeIcons.google,color: Colors.white,size: 25,).p20()).red700.roundedFull.make().p4(),
                  ])
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
          },
          child: Container(
              height: 25,
              color: Colors.lightBlue,
              child: Center(child: "Sign Up".text.white.makeCentered())),
        ),
      ),
    );
  }
}