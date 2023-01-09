import 'package:exam2stationary/Globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class placeorder extends StatefulWidget {
  const placeorder({Key? key}) : super(key: key);

  @override
  State<placeorder> createState() => _placeorderState();
}

class _placeorderState extends State<placeorder> {
  int quant = 0;
  @override
  Widget build(BuildContext context) {
    final cartlist = ModalRoute.of(context)!.settings.arguments as List;
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
          "Pocket Stationary",
          style: GoogleFonts.acme(
            fontSize: 25,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff594545),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Container(
                  height: 350,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(color: Colors.transparent, width: 5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image(
                    image: AssetImage(cartlist[0]),
                    fit: BoxFit.cover,
                  )),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "  ${cartlist[1]}",
                style: GoogleFonts.robotoSlab(
                    fontSize: 25,
                    color: Colors.brown.shade900,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "   ${cartlist[3]}",
                    style: GoogleFonts.robotoSlab(
                        fontSize: 20,
                        color: Colors.green.shade900,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "     10% off",
                    style: GoogleFonts.robotoSlab(
                        fontSize: 15,
                        color: Colors.red.shade900,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(5)),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "   Description :",
                style: GoogleFonts.robotoSlab(
                    fontSize: 20,
                    color: Colors.brown.shade900,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
            Padding(padding: EdgeInsets.all(2)),
            Align(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "     A pen is a common writing an  ainstrument that applies ink to a  surface, usually paper, for writing   or drawing.",
                  style: GoogleFonts.robotoSlab(
                      fontSize: 15,
                      color: Colors.brown.shade700,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(30)),
            Container(
              height: 120,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Color(0xff594545)),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: FloatingActionButton(
                          backgroundColor: Colors.white,
                          onPressed: () {
                            setState(() {
                          quant++;
                            });
                          },
                          child: Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        "${quant}",
                        style: GoogleFonts.robotoSlab(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: FloatingActionButton(
                          backgroundColor: Colors.grey,
                          onPressed: () {
                            setState(() {
                             quant--;
                            });
                          },
                          child: Center(
                            child: Icon(
                              Icons.horizontal_rule,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            Globals.oname = cartlist[1];
                            Globals.oprice = cartlist[3];
                           Navigator.pushNamed(context,'by',arguments: quant);
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 200,
                          child: Center(
                            child: Text(
                              "Buy Now",
                              style: GoogleFonts.robotoSlab(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(color: Colors.white, width: 3)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: Color(0xffEDDBC0),
      resizeToAvoidBottomInset: false,
    );
  }
}
