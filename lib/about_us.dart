import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/Navbar.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Scaffold(


      body: Stack(

        children: <Widget>[
          Container(
            height: size.height * 0.5 ,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/background.png'),
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://i.ibb.co/g3b3H4G/Untitled-design-1.png'),
                        ),

                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('FarmNet',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                            Text('Limited',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),)
                          ],
                        )
                      ],
                    ),

                  ),

                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    elevation:0,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child:
                            Text('The Story Behind Our FarmNet' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                          ),

                          //SvgPicture.network('https://www.svgrepo.com/show/301513/customer-service.svg', height: 140,),
                            Text('FarmNet is an innovative agri-fin-tech startup that intends to connect smallholder farmers with their consumers and investors in promoting a symbiotic relationship through technology-powered safe and organic farming practices that ensures food safety and environmental sustainability.' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.black),),

                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('Why FarmNet is Unique' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                          ),


                        ]

                    ),
                  ),




                  Expanded(child:  GridView.count(
                      mainAxisSpacing: 25,
                      crossAxisSpacing: 20,
                      primary: false,
                      children: <Widget>[
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          elevation:4,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network('https://www.svgrepo.com/show/196097/savings-investment.svg', height: 70,),

                                Text('Micro Investment' ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),

                              ]

                          ),
                        ),

                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          elevation:4,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network('https://www.svgrepo.com/show/92444/tractor.svg', height: 70,),

                                Text('Advanced Farming Technology' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),

                              ]

                          ),
                        ),


                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          elevation:4,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network('https://www.svgrepo.com/show/218257/human-resources-search.svg', height: 70,),

                                Text('Farmer Support And Training' ,  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),

                              ]

                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          elevation:4,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network('https://www.svgrepo.com/show/271725/monitor-money.svg', height: 70,),

                                Text('Secured Investment' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),

                              ]

                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          elevation:4,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network('https://www.svgrepo.com/show/235597/profits-graph.svg', height: 70,),

                               Text('High Return On Investment' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),


                              ]

                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          elevation:4,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SvgPicture.network('https://www.svgrepo.com/show/252063/organic-lunch.svg', height: 70,),

                                Text('Safe And Organic' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),

                              ]

                          ),
                        ),
                      ],

                      crossAxisCount: 3),
                  ),






                ],
              ),
            ),
          )



        ],

      ),
    );
  }
}
