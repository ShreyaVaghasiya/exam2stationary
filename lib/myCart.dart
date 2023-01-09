import 'package:exam2stationary/Globals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class addtocart extends StatefulWidget {
  const addtocart({Key? key}) : super(key: key);

  @override
  State<addtocart> createState() => _addtocartState();
}

class _addtocartState extends State<addtocart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).pop();
              });
            },
            child: Icon(
              Icons.arrow_back_ios_sharp,
              size: 30,
              color: Colors.white,
            )),
        title: Text(
          "My Cart",
          style: GoogleFonts.acme(
            fontSize: 30,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff594545),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              setState(() {
                Navigator.pushNamed(context, 'or',arguments: [
                  Globals.addCart[index]['cpic'],
                  Globals.addCart[index]['cname'],
                  Globals.addCart[index]['csub'],
                  Globals.addCart[index]['cprice'],
                ]);
              });
            },
            child: Container(
              margin: EdgeInsets.all(10),
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  border: Border.all(color: Colors.black, width: 3),
                ),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Image(
                          image: AssetImage(Globals.addCart[index]['cpic']),
                          width: 150,
                          height: 300,
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.start ,

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${Globals.addCart[index]['cname']}",
                          style: GoogleFonts.exo(
                              fontSize: 25,
                              color: Colors.pink.shade900,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "${Globals.addCart[index]['csub']}",
                          style: GoogleFonts.exo(
                              fontSize: 20,
                              color: Colors.pink.shade900,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "${Globals.addCart[index]['cprice']}",
                          style: GoogleFonts.exo(
                              fontSize: 20,
                              color: Colors.green.shade900,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "10% off",
                          style: GoogleFonts.exo(
                              fontSize: 16,
                              color: Colors.red.shade900,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(10)),

                  ],
                ),
              ),
            ),
          );
        },
        itemCount: Globals.addCart.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            thickness: 2,
          );
        },
      ),
      backgroundColor: Color(0xffEDDBC0),
      resizeToAvoidBottomInset: false,
    );
  }
}
