import 'package:flutter/material.dart';
import 'dart:ui';                                      //to enable the display of an image

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: new Text("CookBuddy",    //assigning the appBar to the base screen of our app
            style: TextStyle(                          //styling the appBar text
                decoration: TextDecoration.none,
                fontSize: 30.0,
                fontFamily: 'Roboto',
                color: Colors.white)
        ),
          backgroundColor: Colors.green,
        ),
        drawer: Drawer(                               //appears as three lines on top left of the app screen
          elevation: 10.0,
          child: Center(                              //having the center as another widget of stack on top of image
            child: Container(
              margin: EdgeInsets.only(top: 40.0),
              child: Column(                          //to implement the various flat buttons of recipes in form of column
                children: <Widget>[
                  FlatButton(                         //a title bar of recipe with navigation to another screen
                    child:
                      Text("Curry",
                      style: TextStyle(               //styling text
                          decoration: TextDecoration.none,
                          fontSize: 30.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                          color: Colors.white)
                  ),
                  color: Colors.amber,                          //assigning color to the flat button
                  onPressed: (){
                    Navigator.pushNamed(context, '/Curry');     //pushing to another screen as the flat button is pressed
                  },
                ),
                FlatButton(                                     //similar as previous flat button

                  child: Text("Dry Aloo",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                          color: Colors.white)
                  ),
                  color: Colors.redAccent,
                  onPressed: (){
                    Navigator.pushNamed(context, '/DryAloo');
                  },
                ),
                FlatButton(                                     //similar as previous flat button

                  child: Text("भिंडी की सब्जी",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 40.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                          color: Colors.white)
                  ),
                  color: Colors.deepPurpleAccent,
                  onPressed: (){
                    Navigator.pushNamed(context, '/Voice1');
                  },
                ),
              ],
            ),
          ),
        )),
        body: new Stack(                              //used to implement one widget over another(required for background image)
          children: <Widget>[                         //specifying children widgets of Stack
            new Container(                            //first widget as Container which would contain the background image
              decoration: new BoxDecoration(          //to add an image
                image:  new DecorationImage(image: new AssetImage('images/MITWPU.jpg'),       //defining the image asset path
                ),
              ),
              child: BackdropFilter(                                        //to implement a filter to the image so as to blur it
                filter: new ImageFilter.blur(sigmaX: 3.0,sigmaY: 3.0),      //specifying blur
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.black.withOpacity(0.2),                   //assigning opacity to image
                  ),
                ),
              ),
            ),
              Container(                                                    //for the text that is displayed on the base page
                    margin: EdgeInsets.all( 45.0),                          //assigning margins to the container
                    child: new Text("Welcome to this cooking app. It has been developed as a part of our Mini-Project.",      //text for the container
                    style: TextStyle(                                       //styling text
                        decoration: TextDecoration.none,
                        fontSize: 30.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                        color: Colors.black)
                ),
              ),

            Container(                                                      //for the flat button on the base page
                margin: EdgeInsets.only(top:400.0, left: 100.0, right: 100.0),
                padding: EdgeInsets.all(15.0),                              //assigning spacing from adjacent widgets
                child: FlatButton(
                  child: new Text("Gallery",                                //text for the flat button
                      style: TextStyle(                                     //styling the text for the flat button
                          decoration: TextDecoration.none,
                          fontSize: 45.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic,
                          color: Colors.white)
                  ),
                  color: Colors.redAccent,                                  //assigning color to flat button
                  onPressed: () {
                    Navigator.pushNamed(context, '/Gallery');               //Navigator to push to Images screen
                  },
                ),
              ),
          ],
        ),
    );
  }

}