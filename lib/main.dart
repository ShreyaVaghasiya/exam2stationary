


import 'package:exam2stationary/homepage.dart';
import 'package:exam2stationary/passwordset.dart';
import 'package:exam2stationary/placeorderpage.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'DashBoardScreen.dart';
import 'bUYpage2.dart';
import 'buypage.dart';
import 'detailpage.dart';
import 'filterpage.dart';
import 'myCart.dart';
import 'myprofile.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => Stationary(),
        'dash' : (context) => DashBoard(),
        'pf' : (context) => Profile(),
        'pass' : (context) => PassChange(),
        'dl' : (contaxt) => Detail(),
        'fl' : (context) => Filter(),
        'cr' : (context) => addtocart(),
        'or' : (context) => placeorder(),
        'by' : (context) => buy(),
        'by2' : (context) => buy2(),
      },
    )
  );
}
class Stationary extends StatefulWidget {
  const Stationary({Key? key}) : super(key: key);

  @override
  State<Stationary> createState() => _StationaryState();
}

class _StationaryState extends State<Stationary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:SplashScreenView(
         navigateRoute: Home(

         ),
         imageSrc: 'assets/myimages/logo.png',
         duration: 5000,
         imageSize: 500,
         text: "Pocket Stationary",
         textStyle: const TextStyle(
           fontSize: 40,
           fontFamily: 'Brothery',
           letterSpacing: 2,
         ),
         backgroundColor: Color(0xffDFD3C3),
       )

       );
  }
}
