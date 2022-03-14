
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    //style
    var cardTextStyle= TextStyle(fontFamily:"Montserrat Regular",fontSize: 16 );

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
                    margin: EdgeInsets.only(bottom: 0),
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
                        Text('Our Services' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                        SvgPicture.network('https://www.svgrepo.com/show/301513/customer-service.svg', height: 120,),



                      ]

                  ),
                ),




            Expanded(child:  GridView.count(
                    mainAxisSpacing: 3,
                  crossAxisSpacing: 3,
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
                          SvgPicture.network('https://www.svgrepo.com/show/255166/investment.svg', height: 100,),

                          Text('Invest With FarmNet' ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.black),),
                       
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
                            SvgPicture.network('https://www.svgrepo.com/show/249163/buy-money.svg', height: 100,),

                            Text('Buy From FarmNet' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.black),),

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
                            SvgPicture.network('https://www.svgrepo.com/show/228119/handshake-deal.svg', height: 100,),

                            Text('Partner With FarmNet ' ,  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.black),),

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
                            SvgPicture.network('https://www.svgrepo.com/show/186530/gear.svg', height: 100,),

                            Text('Solution With FarmNet' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.black),),

                          ]

                      ),
                    ),

                  ],

                  crossAxisCount: 2),
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
