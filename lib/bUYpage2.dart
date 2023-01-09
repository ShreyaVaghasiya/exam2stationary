import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'Globals.dart';

class buy2 extends StatefulWidget {
  const buy2({Key? key}) : super(key: key);

  @override
  State<buy2> createState() => _buy2State();
}

class _buy2State extends State<buy2> {
  final pf = pw.Document();
  dynamic qu2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final pf = pw.Document();
    pf.addPage(
        pw.Page(
            pageFormat: PdfPageFormat.a4,
            build: (pw.Context context) =>  pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.center,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Padding(padding: pw.EdgeInsets.all(5)),
            pw.Text(
              "   Pocket Stationary",
              style: pw.TextStyle(
                fontSize: 35,
                letterSpacing: 1,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.brown,
              ),
            ),
            pw.Padding(padding: pw.EdgeInsets.all(20)),
            pw.Row(
              children: [
                pw.Container(
                  height: 50,
                  width: 220,
                  color:  PdfColors.brown,
                ),
                pw.Text(
                  "   INVOICE  ",
                  style: pw.TextStyle(
                    fontSize: 30,
                    letterSpacing: 1,
                    fontWeight: pw.FontWeight.bold,
                    color: PdfColors.green,
                  ),
                ),
                pw.Container(
                  height: 50,
                  width: 45,
                  color:PdfColors.brown,
                ),
              ],
            ),
            pw.Padding(padding: pw.EdgeInsets.all(5)),
            pw.Text(
              "   Invoice to : ",
              style: pw.TextStyle(
                fontSize: 20,
                color: PdfColors.brown,
                fontWeight: pw.FontWeight.bold,
              ),
            ),
            // Padding(padding: EdgeInsets.all(2)),
            pw.Text(
              "  ${Globals.fname} ${Globals.lname}",
              style: pw.TextStyle(
                fontSize: 25,
                color: PdfColors.brown,
                fontWeight: pw.FontWeight.bold,
              ),
            ),
            pw.Text(
              "   ${Globals.add}",
              style: pw.TextStyle(
                fontSize: 20,
                color:  PdfColors.brown,
                fontWeight: pw.FontWeight.bold,
              ),
            ),
            pw.Text(
              "   Date : 15/10/2022",
              style: pw.TextStyle(
                fontSize: 20,
                color: PdfColors.brown,
                fontWeight: pw.FontWeight.bold,
              ),
            ),
            pw.Padding(padding: pw.EdgeInsets.all(10)),
            pw.Container(
              height: 50,
              width: 420,
              decoration: pw.BoxDecoration(color: PdfColors.black),
              child: pw.Row(
                mainAxisAlignment:pw.MainAxisAlignment.spaceEvenly,
                children: [
                  pw.Text(
                    "Product Name",
                    style: pw.TextStyle(
                      fontSize: 20,
                      color: PdfColors.black,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Text(
                    "Price",
                    style: pw.TextStyle(
                      fontSize: 20,
                      color: PdfColors.black,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Text(
                    "Qty.",
                    style: pw.TextStyle(
                      fontSize: 20,
                      color: PdfColors.black,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Text(
                    "Total",
                    style: pw.TextStyle(
                      fontSize: 20,
                      color: PdfColors.black,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            pw.Padding(padding: pw.EdgeInsets.all(10)),
            pw.Container(
              height: 50,
              width: 420,
              decoration: pw.BoxDecoration(),
              child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                children: [
                  pw.Text(
                    "${Globals.oname}",
                    style: pw.TextStyle(
                      fontSize: 20,
                      color: PdfColors.green,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Padding(padding: pw.EdgeInsets.all(10)),
                  pw.Text(
                    "${Globals.oprice}",
                    style: pw.TextStyle(
                      fontSize: 20,
                      color: PdfColors.green,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Text(
                    "${qu2}",
                    style: pw.TextStyle(
                      fontSize: 20,
                      color: PdfColors.green,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Text(
                    "${int.parse(Globals.oprice) * qu2}",
                    style:  pw.TextStyle(
                      fontSize: 20,
                      color: PdfColors.green,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            pw.Padding(padding: pw.EdgeInsets.all(10)),
            pw.Align(
              alignment: pw.Alignment.center,
              child: pw.Text(
                "                                                        Tax : 2%",
                style: pw.TextStyle(
                  fontSize: 20,
                  color: PdfColors.green,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
            ),
            pw.Padding(padding: pw.EdgeInsets.all(10)),
            pw.Container(
                height: 50,
                width: 400,
                color: PdfColors.brown,
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.center,
                  children: [
                    pw.Text(
                      "Total Amount  : ",
                      style: pw.TextStyle(
                        fontSize: 25,
                        color: PdfColors.white,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Padding(padding: pw.EdgeInsets.all(10)),
                    pw.Text(
                      "₹${int.parse(Globals.oprice) * qu2 + ((int.parse(Globals.oprice) * qu2 * 2) / 100)}",
                      style: pw.TextStyle(
                        fontSize: 25,
                        color: PdfColors.white,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    )
                  ],
                )),
            pw.Padding(padding: pw.EdgeInsets.all(20)),
            pw.Align(
              alignment: pw.Alignment.centerRight,
              child: pw.Container(
                margin: pw.EdgeInsets.only(right: 20),
                child: pw.Text(
                  "${Globals.fname}",
                  style: pw.TextStyle(
                    fontSize: 35,
                    color: PdfColors.brown,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
              ),
            ),
            pw.Align(
              alignment: pw.Alignment.centerRight,
              child: pw.Container(
                margin: pw.EdgeInsets.only(right: 20),
                child: pw.Text(
                  "_________________",
                  style: pw.TextStyle(
                    fontSize: 35,
                    color: PdfColors.brown,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
              ),
            ),
            pw.Align(
              alignment: pw.Alignment.centerRight,
              child: pw.Container(
                margin: pw.EdgeInsets.only(right: 20),
                child: pw.Text(
                  "Authorized Sign",
                  style: pw.TextStyle(
                    fontSize: 22,
                    color: PdfColors.black,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
            ),),
    );
    }
    Widget build(BuildContext context) {
    final qu2 = ModalRoute.of(context)!.settings.arguments as dynamic;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).popUntil((route) => route.isFirst);
              });
            },
            child: Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            )),
        actions: [
          GestureDetector(
            onTap: ()async{

                  Uint8List data = await pf.save();
                  await Printing.layoutPdf(onLayout: (format) => data);

            },
            child: Container(
                margin: EdgeInsets.all(10),
                child: Icon(
                  Icons.picture_as_pdf,
                  size: 30,
                  color: Colors.white,
                )),
          )
        ],
        title: Text(
          "Your Order",
          style: GoogleFonts.acme(
            fontSize: 25,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff594545),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(5)),
          Text(
            "   Pocket Stationary",
            style: GoogleFonts.acme(
              fontSize: 30,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
              color: Colors.brown.shade900,
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Row(
            children: [
              Container(
                height: 50,
                width: 220,
                color: Colors.brown.shade900,
              ),
              Text(
                "   INVOICE  ",
                style: GoogleFonts.acme(
                  fontSize: 25,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade900,
                ),
              ),
              Container(
                height: 50,
                width: 58,
                color: Colors.brown.shade900,
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(5)),
          Text(
            "   Invoice to : ",
            style: GoogleFonts.lato(
              fontSize: 15,
              color: Color(0xff3C2317),
              fontWeight: FontWeight.bold,
            ),
          ),
          // Padding(padding: EdgeInsets.all(2)),
          Text(
            "  ${Globals.fname} ${Globals.lname}",
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Color(0xff3C2317),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "   ${Globals.add}",
            style: GoogleFonts.lato(
              fontSize: 15,
              color: Color(0xff3C2317),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "   Date : 15/10/2022",
            style: GoogleFonts.lato(
              fontSize: 15,
              color: Color(0xff3C2317),
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            height: 50,
            width: 420,
            decoration: BoxDecoration(color: Colors.black12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Product Name",
                  style: GoogleFonts.robotoSlab(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Price",
                  style: GoogleFonts.robotoSlab(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Qty.",
                  style: GoogleFonts.robotoSlab(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Total",
                  style: GoogleFonts.robotoSlab(
                    fontSize: 20,
                    color: Colors.red.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
            height: 50,
            width: 420,
            decoration: BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "${Globals.oname}",
                  style: GoogleFonts.robotoSlab(
                    fontSize: 20,
                    color: Colors.green.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "${Globals.oprice}",
                  style: GoogleFonts.robotoSlab(
                    fontSize: 20,
                    color: Colors.green.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${qu2}",
                  style: GoogleFonts.robotoSlab(
                    fontSize: 20,
                    color: Colors.green.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${int.parse(Globals.oprice) * qu2}",
                  style: GoogleFonts.robotoSlab(
                    fontSize: 20,
                    color: Colors.red.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Align(
            alignment: Alignment.center,
            child: Text(
              "                                                        Tax : 2%",
              style: GoogleFonts.robotoSlab(
                fontSize: 20,
                color: Colors.green.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
              height: 50,
              width: 400,
              color: Colors.brown.shade900,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total Amount  : ",
                    style: GoogleFonts.robotoSlab(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Text(
                    "₹${int.parse(Globals.oprice) * qu2 + ((int.parse(Globals.oprice) * qu2 * 2) / 100)}",
                    style: GoogleFonts.robotoSlab(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )),
          Padding(padding: EdgeInsets.all(20)),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(right: 20),
              child: Text(
                "${Globals.fname}",
                style: GoogleFonts.lobster(
                  fontSize: 35,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(right: 20),
              child: Text(
                "_________________",
                style: GoogleFonts.robotoSlab(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(right: 20),
              child: Text(
                "Authorized Sign",
                style: GoogleFonts.robotoSlab(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xffEDDBC0),
      resizeToAvoidBottomInset: false,
    );
  }
}


