import 'package:exam2stationary/Globals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:passcode_screen/passcode_screen.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profile",
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(5)),
            Center(
              child: Icon(
                Icons.account_circle,
                size: 150,
                color: Colors.black54,
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: TextFormField(
                      onChanged: (val){
                        setState(() {
                          Globals.fname = val;
                        });
                      },
                      validator: (val) {
                        if (Globals.fname.isEmpty || Globals.fname == null) {
                          return "please enter your first name";
                        } else {
                          return null;
                        }
                      },
                      initialValue: Globals.fname,
                      style: GoogleFonts.aleo(
                        fontSize: 20,
                        color: Colors.green.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        label: Text("First Name"),
                          labelStyle:GoogleFonts.aleo(
                            fontSize: 20,
                            letterSpacing: 2,
                            color: Colors.black,
                          ) ,
                          hintText: "Name",
                          hintStyle: GoogleFonts.robotoSlab(
                            fontSize: 22,
                            color: Colors.black45,
                          )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: TextFormField(  keyboardType: TextInputType.name,
                      onChanged: (val){
                        setState(() {
                          Globals.lname = val;
                        });
                      },
                      validator: (val) {
                        if (Globals.lname.isEmpty) {
                          return "please enter your Last Name";
                        } else {
                          return null;
                        }
                      },
                      initialValue: Globals.lname,
                      style: GoogleFonts.aleo(
                        fontSize: 20,
                        color: Colors.green.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                          label: Text("Last Name"),
                          labelStyle:GoogleFonts.aleo(
                            fontSize: 20,
                            letterSpacing: 2,
                            color: Colors.black,
                          ) ,
                          hintText: "Name",
                          hintStyle: GoogleFonts.robotoSlab(
                            fontSize: 22,
                            color: Colors.black45,
                          )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: TextFormField(keyboardType: TextInputType.emailAddress,
                      onChanged: (val){
                        setState(() {
                          Globals.email = val;
                        });
                      },
                      validator: (val) {
                        if (Globals.email.isEmpty || Globals.email == null) {
                          return "please enter your Valid E-mail";
                        } else {
                          return null;
                        }
                      },
                      initialValue: Globals.email,
                      style: GoogleFonts.aleo(
                        fontSize: 20,
                        color: Colors.green.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                          label: Text("Email"),
                          labelStyle:GoogleFonts.aleo(
                            fontSize: 20,
                            letterSpacing: 2,
                            color: Colors.black,
                          ) ,
                          hintText: "E-mail ID",
                          hintStyle: GoogleFonts.robotoSlab(
                            fontSize: 22,
                            color: Colors.black45,
                          )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: TextFormField( keyboardType: TextInputType.number,
                      onChanged: (val){
                        setState(() {
                          Globals.phone = val;
                        });
                      },
                      validator: (val) {
                        if ( Globals.phone.length != 10 || Globals.phone.isEmpty) {
                          return "please enter your Valid Contact no";
                        } else {
                          return null;
                        }
                      },
                      readOnly: true,
                      initialValue: Globals.phone,
                      style: GoogleFonts.aleo(
                        fontSize: 20,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                          label: Text("Contact No"),
                          labelStyle:GoogleFonts.aleo(
                            fontSize: 20,
                            letterSpacing: 2,
                            color: Colors.black45,
                          ) ,
                          hintText: "E-mail ID",
                          hintStyle: GoogleFonts.robotoSlab(
                            fontSize: 22,
                            color: Colors.black45,
                          )),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: TextFormField(
                      readOnly: true,
                      initialValue: Globals.pass,
                      style: GoogleFonts.aleo(
                        fontSize: 20,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        suffix: Container(
                          margin: EdgeInsets.all(10),
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  Navigator.of(context).pushNamed('pass');
                                });
                              },
                              child: Text("Change",style: GoogleFonts.aleo(
                                fontSize: 20,
                                letterSpacing:1,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ) ,),
                            )),
                          label: Text("PassWord",style: GoogleFonts.aleo(
                            fontSize: 20,
                            letterSpacing: 2,
                            color: Colors.black45,
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


                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                      Padding(padding: EdgeInsets.all(5)),
                      Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                            border: Border.all(width: 5,color:Color(0xff594545)),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        alignment: Alignment.center,
                        child: Text("Cancel",style: GoogleFonts.robotoSlab(
                          fontSize: 25,
                          color: Colors.black,
                        ),),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                ],
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
