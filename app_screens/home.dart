import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
        padding: EdgeInsets.all(40.00),
        alignment: Alignment.center,
        color: Colors.deepPurpleAccent,
               child: Column(
                 children: <Widget>[
                   Row(
                     children: <Widget>[
                       Expanded(child: Text(
                         "Lunch",
                         textDirection: TextDirection.ltr,
                         style: TextStyle(
                             decoration: TextDecoration.none,
                             fontSize: 50.0,
                             fontFamily: 'Raleway',
                             fontWeight: FontWeight.w300,
                             fontStyle: FontStyle.italic,
                             color: Colors.black
                         ),
                       )),
                       Expanded(child: Text(
                         "Moong Dal",
                         textDirection: TextDirection.ltr,
                         style: TextStyle(
                             decoration: TextDecoration.none,
                             fontSize: 40.0,
                             fontFamily: 'Raleway',
                             fontWeight: FontWeight.w300,
                             fontStyle: FontStyle.italic,
                             color: Colors.white
                         ),
                       )),
                     ],
                   ),
                   Row(
                     children: <Widget>[
                       Expanded(child: Text(
                         "Dinner",
                         textDirection: TextDirection.ltr,
                         style: TextStyle(
                             decoration: TextDecoration.none,
                             fontSize: 50.0,
                             fontFamily: 'Raleway',
                             fontWeight: FontWeight.w300,
                             fontStyle: FontStyle.italic,
                             color: Colors.black
                         ),
                       )),
                       Expanded(child: Text(
                         "Pav Bhaji",
                         textDirection: TextDirection.ltr,
                         style: TextStyle(
                             decoration: TextDecoration.none,
                             fontSize: 40.0,
                             fontFamily: 'Raleway',
                             fontWeight: FontWeight.w300,
                             fontStyle: FontStyle.italic,
                             color: Colors.white
                         ),
                       )),
                     ],
                   ),
                   MITImageAsset(),
                   KnowIngredients()
                 ],
               )
      )
    );
  }

}

class MITImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  AssetImage assetImage= AssetImage('images/MITWPU logo.jpg');
  Image image= Image(image: assetImage, width: 100.0, height: 100.0);
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    child: image,);
  }

}

class KnowIngredients extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      width: 250.0,
      height: 100.0,
      child: RaisedButton(
          color: Colors.deepOrange,
          child: Text(
            "Click here to know Ingredients",
                textAlign: TextAlign.center,
                style: TextStyle(

                  fontSize: 25.0,
                    fontFamily: 'Raleway',
                    color: Colors.black),

          ),
          elevation: 6.0,
          onPressed: () => makeFood(context)
      ),
    );
  }

  void makeFood(BuildContext context){
    var alertDialog= AlertDialog(
      title: Text("Hello Our Budding Masterchef"),
      content: Text("Happy and safe Cooking"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) => alertDialog
    );
  }

}