import 'package:flutter/material.dart';

import 'dart:ui';


class portfolioPage extends StatelessWidget {

  Widget _createHeader(){
    return DrawerHeader(margin: EdgeInsets.zero,padding: EdgeInsets.zero,
    decoration: BoxDecoration(image: DecorationImage(image:AssetImage('assets/appimages/image.jpeg'),fit: BoxFit.fill),),
    child:Text("MyPortfolio",style: TextStyle(color:Colors.greenAccent, fontWeight: FontWeight.bold),)
    );
  }


  List<Widget> _tiles= <Widget>[
    _gridTiles(image:"App1.jpg",description: "Simple Calculator with addtional Interest Calculator for simple and compount interest ",),
    _gridTiles(image:"images_4.jpeg",description: "Flutter with Image Identification using Machine Learning",),
   _gridTiles(image:"images_12.jpeg",description: "Coming Soon"),
   _gridTiles(image:"images_12.jpeg",description: "Coming Soon"),
    _gridTiles(image:"images_12.jpeg",description: "Coming Soon"),

  ];
    
    @override 
    Widget build(BuildContext context){
      num tile_row=(_tiles.length/3).ceil();
      return SafeArea(
        child: Scaffold(appBar:AppBar(title:Text("MyPortfolio"),),
        
        //gridview
        body:Container(padding:EdgeInsets.fromLTRB(25, 25, 25, 10),child:
        new GridView.count(crossAxisCount:3,children:_tiles))
        
          //drawer
        ,endDrawer: Drawer(child:ListView(children:<Widget> [
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





class _gridTiles extends StatelessWidget {
  _gridTiles({Key key,this.image,this.description}):super(key: key); 
  final String image;
  final String description;
  Widget build(BuildContext context) {
     return GridTile(child: new Container(height: 50,margin:EdgeInsets.all(20),
    child:RaisedButton(hoverColor: Colors.teal,onPressed: (){},
    //showDialog(context: context,
    //builder:(BuildContext context)=>_showDetails(image: image,description:description));},
    child: Container(decoration:BoxDecoration(image:DecorationImage(
      image:AssetImage('assets/appimages/'+image),fit: BoxFit.cover)),
      ))) ,
    );
  }
}


class _showDetails extends StatelessWidget {
 _showDetails({Key key,this.image,this.description}):super(key: key); 
  final String image;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,width:100,
      child: Center(child:Container(child:Column(children:<Widget>[Image.asset('assets/appimages/'+image,height: 300),
      SizedBox(height:50),Text(description,style: TextStyle(fontWeight: FontWeight.normal),)])
      )),
    );
  }
}