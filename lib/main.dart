import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Login.dart';
import 'Register.dart';
import 'Logo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // is not restarted.
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignIn(),
    );
  }
}

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context){
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Logo().py24(),
              HeightBox(10),
              VxBlock(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      print("Sign In with FaceBook");
                    },
                    child: VxBox(child:Row(children: <Widget>[
                      FaIcon(FontAwesomeIcons.facebookF).p16(),
                      "Sign In With Facebook".text.blue700.make()
                    ],)).white.roundedLg.make().px16(),
                  ),
                  VxBox(child:Row(children: <Widget>[
                    FaIcon(FontAwesomeIcons.google).p16(),
                    "Sign In With Google".text.red700.make()
                  ],)).white.roundedLg.make().px16().py8(),
                  GestureDetector(
                      onTap:(){
                        print("SignUp");
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                      },child: VxBox(child: "Sign Up".text.black.makeCentered().p16()).white.roundedLg.make().px16().py16()),
                  GestureDetector(
                    onTap: (){
                      print("Sign In");
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    },
                    child: HStack([
                      "Already Registered?".text.make(),
                      " Sign In".text.white.make()
                    ]).centered(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}