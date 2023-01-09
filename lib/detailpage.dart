import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Globals.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  List<Map<String,dynamic>> product = [
    {
      'pic' : 'assets/myimages/f1.png',
      'name' : 'Camlin',
      'sub' : 'Camel Sparkle',
      'pr' : '5000',
      'quant' : 0,
    },
    {
      'pic' : 'assets/myimages/f2.png',
      'name' : 'Doms',
      'sub' : 'Doms Oil',
      'pr' : '10500', 'quant' : 0,
    },
    {
      'pic' : 'assets/myimages/f3.png',
      'name' : 'Camlin',
      'sub' : 'Camlin Poster',
      'pr' : '20500', 'quant' : 0,
    },
    {
      'pic' : 'assets/myimages/f4.png',
      'name' : 'Doms',
      'sub' : 'Doms Long',
      'pr' : '40000', 'quant' : 0,
    },
    {
      'pic' : 'assets/myimages/f5.png',
      'name' : 'Cello',
      'sub' : 'Cello Color up',
      'pr' : '30800', 'quant' : 0,
    }
  ];
  late String cpic;
  late String cname;
  late String cprice;
  late String csub;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar( leading: GestureDetector(
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
        actions: [
          GestureDetector(
            onTap: (){
              setState(() {
                Navigator.of(context).pushNamed('cr');
              });
            },
            child: Container(
                margin: EdgeInsets.all(10),
                child: Icon(
                  Icons.shopping_cart,
                  size: 25,
                )),
          )
        ],
        backgroundColor: Color(0xff594545),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(5)),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.black12,
              ),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    Navigator.of(context).pushNamed('fl');
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment:CrossAxisAlignment.center ,
                  children: [
                    Icon(Icons.filter_alt,size: 30,),
                    Padding(padding: EdgeInsets.all(10)),
                    Center(
                      child: Text("Filter",style: GoogleFonts.robotoSlab(
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                    )
                  ],
                ),
              ),
            ),

      Column(
              children: [
                ...product.map((e) {return  Container(
                  margin: EdgeInsets.all(10),
                  child: Container(
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff594545),width: 5),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black12,
                    ),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Image(image: AssetImage(e['pic']),
                          height: 150,
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment:CrossAxisAlignment.start ,
                          children: [
                            Text("${e['name']}",style: GoogleFonts.cambo(
                              fontSize: 20,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3C2317),
                            ),),
                            Padding(padding: EdgeInsets.all(5)),
                            Text("${e['sub']}",style: GoogleFonts.cambo(
                              fontSize: 20,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3C2317),
                            ),),
                            Padding(padding: EdgeInsets.all(5)),
                            Text("${e['pr']}",style: GoogleFonts.cambo(
                              fontSize: 20,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              color: Colors.red.shade900,
                            ),),
                            Padding(padding: EdgeInsets.all(2)),
                            InkWell(
                              onTap: (){
                                setState(() {
                                   cpic = e['pic'];
                                   cname = e['name'];
                                   csub = e['sub'];
                                   cprice = e['pr'];

                                   Map<String,dynamic> cart = {'cpic' : cpic,'cname' : cname,'cprice' : cprice,'csub':csub};
                                   Globals.addCart.add(cart);
                                   print(Globals.addCart);
                                });
                              },
                              child: Container(
                                height: 30,
                                width: 150,
                                child : Center(
                                  child: Text("Add to Cart",style: GoogleFonts.acme(
                                    fontSize: 20,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),),
                                ),
                                decoration: BoxDecoration(
                                    color: Color(0xff3C2317),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );})
              ],
            )
          ]
        ),
      ),
      backgroundColor: Color(0xffEDDBC0),
      resizeToAvoidBottomInset: false,
    );
  }
}


