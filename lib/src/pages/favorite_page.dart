import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget{
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:const Text("Favorite Page")),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(60)),
            Center(
              
              child: Text("FavoritePage"),
            ),
            
          ],
        ),
      ),
    );
  }
}