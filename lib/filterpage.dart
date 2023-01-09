import 'package:exam2stationary/Globals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar( leading: GestureDetector(
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
          "Filter",
          style: GoogleFonts.acme(
            fontSize: 30,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        backgroundColor: Color(0xff594545),
      ),
       body: Column(
         children: [
           Padding(padding: EdgeInsets.all(20)),

         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Center(
               child: Text("Price",style: GoogleFonts.aleo(
                 fontSize: 25,
                 letterSpacing: 1,
                 fontWeight: FontWeight.bold,
                 color: Colors.green.shade900,
               ),),
             ),
             Container(
               width: 340,
               child: RangeSlider(values:Globals.no,
                   min: 0,
                   max: 50000,
                   divisions: 5,
                   inactiveColor: Colors.red.shade200,
                   activeColor: Colors.green.shade900,
                   labels: RangeLabels("${(Globals.no.start).toInt()} ","${(Globals.no.end).toInt()}"),
                   onChanged: (val){
                     setState(() {
                       Globals.no = RangeValues(val.start,val.end);
                       Globals.start = val.start;
                       Globals.end = val.end;
                     });
                   }),
             )
           ],
         ),
           Padding(padding: EdgeInsets.all(30)),
           Container(
             height: 50,
             width: 400,
             decoration: BoxDecoration(
               color: Colors.green.shade600,
               borderRadius: BorderRadius.circular(10),
               border: Border.all(color: Colors.black, width: 3),
             ),
             child: OutlinedButton(
               onPressed: () {
                 setState(() {
                     Navigator.pop(context);
                 });
               },
               child: Text(
                 'Apply Filter',
                 style: GoogleFonts.anticDidone(
                   fontSize: 25,
                   letterSpacing: 2,
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
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
