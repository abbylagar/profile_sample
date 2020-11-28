import 'package:flutter/material.dart';



class contactPage extends StatelessWidget {

  
  Widget _createHeader(){
    return DrawerHeader(margin: EdgeInsets.zero,padding: EdgeInsets.zero,
    decoration: BoxDecoration(image: DecorationImage(image:AssetImage('assets/appimages/image.jpeg'),fit: BoxFit.fill),),
    child:Text("MyPortfolio",style: TextStyle(color:Colors.greenAccent, fontWeight: FontWeight.bold),)
    );
  }

  Widget _coverImage(double screenSize){
    return Container(height: screenSize*0.5,
    decoration: BoxDecoration(image:DecorationImage(image:AssetImage('assets/appimages/image.jpeg'),fit:BoxFit.cover)));

  }

  Widget _profileImage(){
    return Align(alignment:Alignment.center ,child:Center(child: Container(width: 200,height: 200,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),
    border: Border.all(color:Colors.white,width:10),
    image:DecorationImage(image:AssetImage('assets/appimages/images_4.jpeg'),fit: BoxFit.cover)), 
  ),));
  }
 
  Widget _fullName(){
    TextStyle _nameTextStyle= TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40);
    return Align(alignment:Alignment.center ,child:Padding(padding:EdgeInsets.fromLTRB(10, 250, 10, 5),child:Text("Abby Lagar",style: _nameTextStyle,)));
  }

  Widget _skills(double screenSize){
      TextStyle _nameTextStyle= TextStyle(color: Colors.black,fontWeight: FontWeight.bold);
      return SafeArea(child:Align(alignment: Alignment.bottomCenter,
      child:Row(mainAxisAlignment: MainAxisAlignment.center,children: [
        Padding(padding: EdgeInsets.fromLTRB(10, 40, 10,40),child:Container(width:screenSize*0.3,padding: EdgeInsets.all(10),decoration:BoxDecoration(color: Colors.teal,border:Border.all(),borderRadius: BorderRadius.circular(10)),
        child: Row(children:[Icon(Icons.email),Text("\t _@yahoo.com",style: _nameTextStyle,)])))
        , 
        Padding(padding: EdgeInsets.fromLTRB(10, 40, 10,40),child:Container(width:screenSize*0.3,padding: EdgeInsets.all(10),decoration:BoxDecoration(color: Colors.teal,border:Border.all(),borderRadius: BorderRadius.circular(10)),
        child: Row(children:[Icon(Icons.phone),Text("\t09XXXXXXX",style: _nameTextStyle,)])))
        ,
         Padding(padding: EdgeInsets.fromLTRB(10, 40, 10,40),child:Container(width:screenSize*0.3,padding: EdgeInsets.all(10),decoration:BoxDecoration(color: Colors.teal,border:Border.all(),borderRadius: BorderRadius.circular(10)),
        child: Row(children:[Icon(Icons.face),Text("\t Abby Abby",style: _nameTextStyle,)])))
         ],)));
  }


    @override 
    Widget build(BuildContext context){
      double screenSize=MediaQuery.of(context).size.height;
      return Scaffold(appBar:AppBar(title:Text("MyPortfolio"),),
      body:SafeArea(child:Stack(children: <Widget>[
          _coverImage(screenSize),
          _profileImage(),
          _fullName(),
          _skills(screenSize)],))
        
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
      ,);
    }
  }