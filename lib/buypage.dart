import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Globals.dart';

class buy extends StatefulWidget {
  const buy({Key? key}) : super(key: key);

  @override
  State<buy> createState() => _buyState();
}

class _buyState extends State<buy> {
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final qu1 = ModalRoute.of(context)!.settings.arguments as dynamic;
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
            fontSize: 30,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff594545),
      ),
      body: Form(
        key: _form,
        child: Column(
          children: [            Padding(padding: EdgeInsets.all(15)),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
          "  Enter Your Address : ",
          style: GoogleFonts.robotoSlab(
              fontSize: 25,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
              color: Colors.brown.shade900,
          ),
        ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                style: GoogleFonts.aleo(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    enabled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: Colors.black12,
                    filled: true,
                    hintText: "Address",
                    hintStyle: GoogleFonts.robotoSlab(
                      fontSize: 20,
                      color: Colors.black45,
                    )),
                maxLines: 3,
                keyboardType: TextInputType.emailAddress,
                onChanged: (val) {
                  setState(() {
                    Globals.add = val;
                  });
                },
                validator: (val) {
                  if (Globals.add.isEmpty || Globals.add == null) {
                    return "please enter your Address";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (_form.currentState!.validate()) {
                       Navigator.pushNamed(context,'by2',arguments: qu1);
                  } else {}
                });
              },
              child: Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                    color: Color(0xff594545),
                    borderRadius: BorderRadius.circular(20)),
                alignment: Alignment.center,
                child: Text(
                  "Submit",
                  style: GoogleFonts.robotoSlab(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xffEDDBC0),
      resizeToAvoidBottomInset: false,
    );
  }
}
