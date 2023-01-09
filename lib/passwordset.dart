import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Globals.dart';
class PassChange extends StatefulWidget {
  const PassChange({Key? key}) : super(key: key);

  @override
  State<PassChange> createState() => _PassChangeState();
}

class _PassChangeState extends State<PassChange> {
  String oldpass = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Change Password",
          style: GoogleFonts.acme(
            fontSize: 30,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
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
        backgroundColor: Color(0xff594545),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Container(
              height: 120,
              width: 500,
              color:  Color(0xffEDDBC0),
              child: Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(keyboardType: TextInputType.number,
                  onChanged: (val){
                    setState(() {
                      oldpass = Globals.pass;
                      Globals.Checkpass = val;
                    });
                  },
                  validator: (val) {
                    if (oldpass != Globals.Checkpass ) {
                      return "Enter Valid Password";
                    } else {
                      return null;
                    }
                  },
                  style: GoogleFonts.aleo(
                    fontSize: 20,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text("Current Password *",style: GoogleFonts.robotoSlab(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ) ,),
                      labelStyle:GoogleFonts.aleo(
                        fontSize: 20,
                        letterSpacing: 2,
                        color: Colors.black45,
                      ) ,
                      hintText: "Password",
                      hintStyle: GoogleFonts.robotoSlab(
                        fontSize: 22,
                        color: Colors.black45,
                      )),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              height: 120,
              width: 500,
              color:  Color(0xffEDDBC0),
              child: Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(keyboardType: TextInputType.number,
                  onChanged: (val){
                    setState(() {
                      Globals.Newpass = val;
                    });
                  },
                  style: GoogleFonts.aleo(
                    fontSize: 20,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text("New Password *",style: GoogleFonts.robotoSlab(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ) ,),
                      labelStyle:GoogleFonts.aleo(
                        fontSize: 20,
                        letterSpacing: 2,
                        color: Colors.black45,
                      ) ,
                      hintText: "Password",
                      hintStyle: GoogleFonts.robotoSlab(
                        fontSize: 22,
                        color: Colors.black45,
                      )),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              height: 120,
              width: 500,
              color:  Color(0xffEDDBC0),
              child: Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(keyboardType: TextInputType.number,
                  onChanged: (val){
                    setState(() {
                      Globals.pass = val;
                    });},
                  validator: (val) {
                    if (Globals.Newpass != Globals.pass ) {
                      return "Enter Valid Password";
                    } else {
                      return null;
                    }
                  },
                  style: GoogleFonts.aleo(
                    fontSize: 20,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text("Confirm Password *",style: GoogleFonts.robotoSlab(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ) ,),
                      labelStyle:GoogleFonts.aleo(
                        fontSize: 20,
                        letterSpacing: 2,
                        color: Colors.black45,
                      ) ,
                      hintText: "Password",
                      hintStyle: GoogleFonts.robotoSlab(
                        fontSize: 22,
                        color: Colors.black45,
                      )),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            GestureDetector(
              onTap: (){
                setState(() {
                  if(_formKey.currentState!.validate())
                  {
                    Navigator.of(context).pop();
                  }
                  else
                  {

                  }
                });
              },
              child: Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    color: Color(0xff594545),
                    borderRadius: BorderRadius.circular(20)
                ),
                alignment: Alignment.center,
                child: Text("Save",style: GoogleFonts.robotoSlab(
                  fontSize: 25,
                  color: Colors.white,
                ),),
              ),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
