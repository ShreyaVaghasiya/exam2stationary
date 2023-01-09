import 'package:exam2stationary/Globals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  dynamic pi = Icons.lock;
  bool ot = true;
  bool check = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
            height: 900,
            width: 500,
            decoration: BoxDecoration(
               color: Colors.black26
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                Padding(padding: EdgeInsets.all(15)),
                Form(
                  key: _formKey,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          child: TextFormField(
                            style: GoogleFonts.aleo(
                              fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                                enabled: true,

                                border: OutlineInputBorder(

                                  borderRadius: BorderRadius.circular(10),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "Phone",
                                hintStyle: GoogleFonts.robotoSlab(
                                  fontSize: 12,
                                  color: Colors.black45,
                                )
                            ),
                            keyboardType: TextInputType.number,
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
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(15)),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: TextFormField( style: GoogleFonts.aleo(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                            decoration: InputDecoration(
                                enabled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "email",
                                hintStyle: GoogleFonts.robotoSlab(
                                  fontSize: 12,
                                  color: Colors.black45,
                                )
                            ),
                            keyboardType: TextInputType.emailAddress,
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
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(15)),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: TextFormField( style: GoogleFonts.aleo(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                            decoration: InputDecoration(
                                enabled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "First Name",
                                hintStyle: GoogleFonts.robotoSlab(
                                  fontSize: 12,
                                  color: Colors.black45,
                                )
                            ),
                            keyboardType: TextInputType.name,
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
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(15)),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: TextFormField( style: GoogleFonts.aleo(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                            decoration: InputDecoration(
                                enabled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "last Name",
                                hintStyle: GoogleFonts.robotoSlab(
                                  fontSize: 12,
                                  color: Colors.black45,
                                )
                            ),
                            keyboardType: TextInputType.name,
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
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(15)),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: TextFormField( style: GoogleFonts.aleo(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                            obscureText: ot,
                            decoration: InputDecoration(
                              suffix: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    check = !check;
                                    if(check == true)
                                    {
                                      pi = Icons.lock;
                                      ot = true;
                                    }
                                    else
                                    {
                                      pi = Icons.lock_open;
                                      ot=false;
                                    }
                                  });
                                },
                                  child: Icon(pi)),
                                enabled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: "Password",
                                hintStyle: GoogleFonts.robotoSlab(
                                  fontSize: 12,
                                  color: Colors.black45,
                                )
                            ),
                            keyboardType: TextInputType.number,
                            onChanged: (val){
                              setState(() {
                                Globals.pass = val;
                              });
                            },
                            validator: (val) {
                              if (Globals.pass.isEmpty ) {
                                return "at least 8 Characters";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(15)),
                        GestureDetector(
                          onTap: (){
                            setState(() {

                              if (_formKey.currentState!.validate()) {
                                Navigator.of(context).pushNamed('dash');
                              } else {

                              }

                            });
                          },
                          child: Container(
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color(0xff594545),
                              borderRadius: BorderRadius.circular(12)
                            ),
                            alignment: Alignment.center,
                            child: Text("Submit",style: GoogleFonts.robotoSlab(
                              fontSize: 20,
                              color: Colors.white,
                            ),),
                          ),
                        )
                      ],
                    ),

                ),
              ],
            ),
          ),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
