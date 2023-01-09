import 'package:exam2stationary/Globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tcard/tcard.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final TCardController _controller = TCardController();

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/myimages/s1.png',
      'assets/myimages/s2.png',
      'assets/myimages/s3.png',
      'assets/myimages/s4.png',
      'assets/myimages/s5.png',
      'assets/myimages/s6.png',
      'assets/myimages/s1.png',
      'assets/myimages/s2.png',
      'assets/myimages/s3.png',
      'assets/myimages/s4.png',
      'assets/myimages/s5.png',
      'assets/myimages/s6.png',
    ];
    List<Widget> cards = List.generate(images.length, (index) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 20),
              blurRadius: 23.0,
              spreadRadius: -13.0,
              color: Colors.black54,
            )
          ],
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image(
              image: AssetImage(images[index]),
              fit: BoxFit.cover,
            )),
      );
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Pocket Stationary",
            style: GoogleFonts.acme(
              fontSize: 30,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          backgroundColor: Color(0xff594545),
        ),
        body: Center(
            child: SingleChildScrollView(
              child: Column(
          children: [
              Container(
                  height: 60,
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    style: GoogleFonts.acme(
                      fontSize: 20,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: GoogleFonts.robotoSlab(
                            fontSize: 20,
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                        filled: true,
                        fillColor: Color(0xff9F8772),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 35,
                          color: Colors.black,
                        )),
                  )),
              TCard(
                controller: _controller,
                onForward: (index, images) {
                  setState(() {
                    print(index);
                    index++;
                  });
                },
                onBack: (index, images) {
                  setState(() {
                    index--;
                  });
                },
                onEnd: () {
                  setState(() {});
                },
                cards: cards,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff594545), width: 5)),
                    child: OutlinedButton(
                      onPressed: () {
                        print(_controller);
                        setState(() {
                          _controller.back();
                        });
                      },
                      child: Text(
                        'Back',
                        style: GoogleFonts.acme(
                          fontSize: 20,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff594545), width: 5),
                    ),
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          _controller.reset();
                        });
                      },
                      child: Text(
                        'Reset',
                        style: GoogleFonts.acme(
                          fontSize: 20,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff594545), width: 5),
                    ),
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          _controller.forward();
                        });
                      },
                      child: Text(
                        'Forward',
                        style: GoogleFonts.acme(
                          fontSize: 20,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Container(
                        height: 207,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff594545), width: 5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/myimages/file.png'),
                             height: 140,
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            Container(
                              height: 49,
                              width: 200,
                              color:  Color(0xff594545),
                              child: Center(
                                child: Text("Accounts\nRegister Books",style: GoogleFonts.acme(
                                  fontSize: 19,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ), ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(3)),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.of(context).pushNamed('dl');
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Container(
                          height: 207,
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff594545), width: 5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/myimages/color.png'),
                                height: 140,
                              ),
                              Padding(padding: EdgeInsets.all(4)),
                              Container(
                                height: 49,
                                width: 200,
                                color:  Color(0xff594545),
                                child: Center(
                                  child: Text("Fabric\nPoster Colors",style: GoogleFonts.acme(
                                    fontSize: 19,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ), ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(3)),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Container(
                        height: 207,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff594545), width: 5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/myimages/pencil.png'),
                              height: 140,
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            Container(
                              height: 49,
                              width: 200,
                              color:  Color(0xff594545),
                              child: Center(
                                child: Text("Scale Erasers\nSharpners",style: GoogleFonts.acme(
                                  fontSize: 19,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ), ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(3)),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Container(
                        height: 207,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff594545), width: 5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/myimages/sketch.png'),
                              height: 140,
                            ),
                            Padding(padding: EdgeInsets.all(4)),
                            Container(
                              height: 49,
                              width: 200,
                              color:  Color(0xff594545),
                              child: Center(
                                child: Text("Colur Pencils\nSketch Pens",style: GoogleFonts.acme(
                                  fontSize: 19,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ), ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
          ],
        ),
            )),
        drawer: Drawer(
            elevation: 20,
            backgroundColor: Color(0xffEDDBC0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 310,
                  color: Color(0xff594545),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed('pf');
                          });
                        },
                        child: Icon(
                          Icons.account_circle,
                          size: 90,
                          color: Colors.white,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${Globals.fname} ${Globals.lname}",
                            style: GoogleFonts.robotoSlab(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          Text(
                            "${Globals.phone}",
                            style: GoogleFonts.robotoSlab(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(20)),
                    Icon(Icons.home_outlined, size: 35),
                    Padding(padding: EdgeInsets.all(20)),
                    GestureDetector(
                      onTap: () {
                        setState(() {});
                      },
                      child: Text(
                        "home",
                        style: GoogleFonts.acme(
                          fontSize: 30,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.all(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(20)),
                    Icon(Icons.my_location, size: 35),
                    Padding(padding: EdgeInsets.all(20)),
                    Text(
                      "My Address",
                      style: GoogleFonts.acme(
                        fontSize: 30,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.all(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(20)),
                    Icon(Icons.feed, size: 35),
                    Padding(padding: EdgeInsets.all(20)),
                    Text(
                      "feedback",
                      style: GoogleFonts.acme(
                        fontSize: 30,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.all(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(20)),
                    Icon(Icons.logout, size: 35),
                    Padding(padding: EdgeInsets.all(20)),
                    GestureDetector(
                      onTap: () {
                        setState(() {});
                      },
                      child: Text(
                        "Log Out",
                        style: GoogleFonts.acme(
                          fontSize: 30,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )),
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffEDDBC0),
      ),
    );
  }
}
