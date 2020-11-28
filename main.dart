import 'package:flutter/material.dart';
import 'dart:js';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'portfolio.dart';
import 'contact.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio Sample',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.teal,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Portfolio Sample'),
      debugShowCheckedModeBanner: false,
      routes: {
        'home':(context)=>MyHomePage(),
        'contactPage':(context)=>contactPage(),
        'portfolioPage':(context)=>portfolioPage(),
      },initialRoute: 'home',
    );
  }
}

  
  class MyHomePage  extends StatelessWidget{
    MyHomePage({Key key, this.title}) : super(key: key); 
    
    final String title;
    

    //carousel widget
    Widget carousel(_height,_width){
      return(
        SizedBox(
          height:_height*0.60,
          width: _width*0.50,
          child: Carousel(
            borderRadius: true,
            radius:Radius.circular(20),
            overlayShadow:true,
            boxFit: BoxFit.cover,
            autoplay: true,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 2000),
            dotSize: 6.0,
            dotIncreasedColor: Color(0xFFFF335C),
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.bottomCenter,
            dotVerticalPadding: 3.0,
            showIndicator: true,
            indicatorBgPadding: 3.0,
            moveIndicatorFromBottom: 50,
            images: [ AssetImage('assets/appimages/images_11.jpeg'),
          AssetImage('assets/appimages/images_12.jpeg'),
          AssetImage('assets/appimages/images_14.jpeg'),
          AssetImage('assets/appimages/images_15.jpeg')
          ],
          )
      )
      );
    }

  Widget _createHeader(){
    return DrawerHeader(margin: EdgeInsets.zero,padding: EdgeInsets.zero,
    decoration: BoxDecoration(image: DecorationImage(image:AssetImage('assets/appimages/image.jpeg'),fit: BoxFit.fill),),
    child:Text("MyPortfolio",style: TextStyle(color:Colors.greenAccent, fontWeight: FontWeight.bold),)
    );
  }


    @override 
    Widget build(BuildContext context){
      return SafeArea(
        child: Scaffold(appBar:AppBar(title:Text("MyPortfolio"),),
        body:Stack(children:[

    SafeArea(child:Container(height: MediaQuery.of(context).size.height,decoration:BoxDecoration(gradient:LinearGradient(begin:Alignment.topCenter,end:Alignment.bottomCenter,colors:[Colors.teal.shade200,Colors.white54]),)
    ,child:Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly, children: [
        Column(children: [Container(padding: EdgeInsets.all(25),
          child:Text("Quote of the Day:",style:TextStyle(color:Colors.blueGrey.shade500,fontSize:30,fontWeight: FontWeight.bold)),
        )
        ,carousel(MediaQuery.of(context).size.height,MediaQuery.of(context).size.width)
        ])
        
        ,SafeArea(child:Container(padding:EdgeInsets.all(2),height:MediaQuery.of(context).size.height*0.6,
        child:Container(padding:EdgeInsets.all(2),height:MediaQuery.of(context).size.height*0.8,
        child:Center(child:Column(mainAxisAlignment: MainAxisAlignment.start,children: [ Text("// life motto" ,style: TextStyle(color:Colors.grey, fontSize: 30),textAlign: TextAlign.left),
        Text("  if (sad() == true) { \n sad().stop; \n beAwesome(); \n }" ,
        style: TextStyle(color:Colors.blueGrey, fontSize: 30),textAlign: TextAlign.left,),
        SizedBox(height: MediaQuery.of(context).size.height*0.1,),
        RaisedButton(padding:EdgeInsets.all(20),color: Colors.lightGreen,shape: RoundedRectangleBorder(side:BorderSide(color:Colors.white, width:1,style: BorderStyle.solid) ,
        borderRadius: BorderRadius.circular(10.0)),child:Text("Know More",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),) ,onPressed: (){},)
     ]
         )
        ))))


        ])))
        ,Align(alignment: Alignment.bottomCenter,child:Row(mainAxisAlignment: MainAxisAlignment.center,children: [
          Padding(padding: EdgeInsets.fromLTRB(10, 40, 10,10),child:Container(padding: EdgeInsets.all(10),decoration:BoxDecoration(border:Border.all(),borderRadius: BorderRadius.circular(10)),
          child: Row(children:[Image.asset("assets/appimages/images_21.jpeg",width: 50,height: 50,)])))
          , 
          Padding(padding: EdgeInsets.fromLTRB(10, 40, 10,10),child:Container(padding: EdgeInsets.all(10),decoration:BoxDecoration(border:Border.all(),borderRadius: BorderRadius.circular(10)),
          child: Row(children:[Image.asset("assets/appimages/images_22.jpeg",height: 50,width: 50,)])))
          ,
          Padding(padding: EdgeInsets.fromLTRB(10, 40, 10,10),child:Container(padding: EdgeInsets.all(10),decoration:BoxDecoration(border:Border.all(),borderRadius: BorderRadius.circular(10)),
          child: Row(children:[Image.asset("assets/appimages/images_23.jpeg",height: 50,width: 50,)])))
          ,Padding(padding: EdgeInsets.fromLTRB(10, 40, 10,10),child:Container(padding: EdgeInsets.all(10),decoration:BoxDecoration(border:Border.all(),borderRadius: BorderRadius.circular(10)),
          child: Row(children:[Image.asset("assets/appimages/images_24.jpeg",height: 50,width: 50,)])))
          ,Padding(padding: EdgeInsets.fromLTRB(10, 40, 10,10),child:Container(padding: EdgeInsets.all(10),decoration:BoxDecoration(border:Border.all(),borderRadius: BorderRadius.circular(10)),
          child: Row(children:[Image.asset("assets/appimages/images_26.jpeg",height: 50,width: 50,)])))
          

           ],))
           
           ]),

    
    //drawer
        endDrawer: Drawer(child:ListView(children:<Widget> [
          _createHeader(),
          ListTile(hoverColor: Colors.teal,leading:Icon(Icons.home),title: Text("Home"),onTap: (){
            Navigator.pop(context);
            Navigator.pushNamed(context, 'home');
          },),
          ListTile(hoverColor: Colors.teal,leading:Icon(Icons.search),title: Text("Search"),onTap: (){},),
          ListTile(hoverColor: Colors.teal,leading:Icon(Icons.image),title: Text("Portfolio"),onTap: (){
            Navigator.pop(context);
            Navigator.pushNamed(context, 'portfolioPage');
          }),
          ListTile(hoverColor: Colors.teal,leading:Icon(Icons.people),title: Text("Contact"),onTap: (){
            Navigator.pop(context);
            Navigator.pushNamed(context, 'contactPage');}),
          ListTile(title: Text('Version 0.0.1'),onTap: (){}) 
        ],) ,)
        ,),
      );
    }
  }


