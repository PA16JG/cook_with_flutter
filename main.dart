import 'package:flutter/material.dart';          // Contains the packages which constitute Material Design
import 'package:flutter_tts/flutter_tts.dart';   // To enable the TTS plugin of flutter
import 'dart:ui';                                //to enable working of background image
import './app_screens/first_screen.dart';        // To direct to the file first_screen.dart when called


void main() => runApp(new MyApp());               //entry point of app (whatever written here is executed)

class MyApp extends StatelessWidget{              //defining a class for the stateless widget (does not change state)
  @override                                       // Stateless widget is a superclass, MyApp is a sub class
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,        //to remove the banner which usually comes in right-top corner
        home: new BaseApp(),
        routes: <String, WidgetBuilder>{          // defining the routes for navigation to respective screens
          '/Curry' : (context) => Curry(),
          '/DryAloo' : (context) => DryAloo(),
          '/Voice1' : (context) => Voice1(),
          '/Gallery' : (context) => Gallery()
        }
    );
  }
}

        class BaseApp extends StatelessWidget{
            @override
            Widget build(BuildContext context) {
              return FirstScreen();               //another dart file made
            }
          }

        class Curry extends StatelessWidget{
          @override
          Widget build(BuildContext context) {
            return Scaffold(                     // allows various important properties to be implemented
                appBar: new AppBar(title: new Text("Curry Recipe",          // appears on top of the displayed screen
                  style: TextStyle(              //for implementing various styles to the text
                      decoration: TextDecoration.none,                      //removing the default underline
                      fontSize: 30.0,             //setting font size
                      fontFamily: 'Raleway',      // defining font style
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,      //styling the text to Italic
                      color: Colors.white               // making the font color to white
                  ),
                ),
                  backgroundColor: Colors.amber,        // Background Color for the appBar
                ),
                body: Center(                           // aligning the content for this screen in the center
                    child: Text("Enjoy your curry",     //inserting text as part of body
                        style: TextStyle(               //styling the text
                            decoration: TextDecoration.none,
                            fontSize: 30.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic,
                            color: Colors.black
                        )
                    )
                )
            );
          }
        }
        class DryAloo extends StatelessWidget{          //All similar to previous one
          @override
          Widget build(BuildContext context) {
            return Scaffold(
                appBar: new AppBar(title: new Text("Dry Aloo Recipe",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 30.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Colors.white
                  ),
                ),
                  backgroundColor: Colors.redAccent,
                ),
                body: Center(
                    child:Text("Enjoy your meal",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 30.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic,
                            color: Colors.black
                        )
                    )
                )
            );
          }
        }

class Voice1 extends StatelessWidget{                   //Stateless Widget for the TTS Widget implementation screen
  final FlutterTts flutterTts = FlutterTts();           //instantiate Flutter TTS plug-in

  @override
  Widget build(BuildContext context) {
    Future _speak() async {                             //defining the speak function which is to be called later

      await flutterTts.setLanguage("en-US");            //feature of TTS plugin to set language
      await flutterTts.setSpeechRate(0.85);             //feature of TTS plugin to set speech rate
      await flutterTts.setPitch(1.2);                   //feature of TTS plugin to set pitch
      await flutterTts.speak("1. Clean all your utensils as well as the uncut ladyfinger(Bhindi) thoroughly....... 2. Now cut the Ladyfinger either vertically or horizontally and also some pieces of Onion. Keep both ready to utilise...... 3. Now add some oil to the pan(कड़ाही) along with Asafoetida (हींग) and cumin (जीरा) and keep it on medium flame....... 4. As you observe any agitation in cumin, add the onion and stir it well. Then add the already cut ladyfinger to it and stir well....... 5. Now cautiously add red chilli powder, salt.. , turmeric powder and coriander powder to the pan and stir it for some time....... 6. Now simmer the flame and cover the pan with a plate. Let it cook for 5 minutes..... 7.As you find the meal complete, turn off the flame. Now add some drops of Lemon and stir it well...... 8.Your meal is now ready to eat....Enjoy ");
    }                                                   //text which is to be converted to speech is placed under flutterTts.speak()
    return Scaffold(
        body: Column(                                     //adding a column widget to insert the list tiles
        children: <Widget>[
          ListTile(                                     //adding  a list tile to column so as to insert text

          title: new Text("1. Clean all your utensils as well the uncut ladyfinger(भिंडी) thoroughly.",   //text as a step 1
          style: TextStyle(                                                                             //styling the text
          fontSize: 20.0
          )),
          ),
          ListTile(
            title: new Text("2. Now cut the Ladyfinger either vertically or horizontally and also some pieces of Onion. Keep both ready to utilise. ",
                style: TextStyle(
                    fontSize: 20.0
                )),
              ),
          ListTile(
            title: new Text("3. Now add some oil to the pan(कड़ाही) along with Asafoetida (हींग) and cumin (जीरा) and keep it on medium flame.",
                style: TextStyle(
                    fontSize: 20.0
                )),
          ),
          ListTile(
            title: new Text("4. As you observe any agitation in cumin, add the onion and stir it well. Then add the already cut ladyfinger to it and stir.",
                style: TextStyle(
                    fontSize: 20.0
                )),
          ),
          ListTile(
            title: new Text("5. Now cautiously add red chilli powder, salt, turmeric powder and coriander powder to the pan and stir it for some time.",
                style: TextStyle(
                    fontSize: 20.0
                )),
          ),
          ListTile(
            title: new Text("6. Now simmer the flame and cover the pan with a plate. Let it cook for 5 minutes.",
                style: TextStyle(
                    fontSize: 20.0
                )),
          ),
          ListTile(
            title: new Text("7. As you find the Sabzi complete, turn off the flame. Now add some drops of Lemon and stir it well.",
                style: TextStyle(
                    fontSize: 20.0
                )),
          ),
          ListTile(
            title: new Text("8. Your Sabzi is now ready to eat.               Enjoy",
                style: TextStyle(
                    fontSize: 20.0
                )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(                 //defining a FAB to make TTS feature user-friendly
        onPressed:() => _speak(),                                 //calling previously defined function when FAB is pressed
        child: Icon(Icons.play_arrow),                            //assigning a play icon to FAB
        backgroundColor: Colors.deepPurple,                       //assigning a color to FAB
      ),
      appBar: new AppBar(title: new Text("भिंडी की सब्जी",           //assigning appBar to this screen
          style: TextStyle(                                       // styling appBar text
              decoration: TextDecoration.none,
              fontSize: 35.0,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
              color: Colors.white
          )
      ),
        backgroundColor: Colors.deepPurpleAccent,                //assigning color to appBar
      ),
    );
  }
}

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: new Text("Images",
            style: TextStyle( // styling appBar text
                decoration: TextDecoration.none,
                fontSize: 35.0,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                color: Colors.white
            )
          ),
          backgroundColor: Colors.redAccent,
        ),
      body:  Column(                                                                                         // Column widget to align widgets vertically
          children: <Widget>[                                                                                //initialising children widgets of column
            Row(                                                                                             // Row widget to align widgets horizontally
              children: <Widget>[                                                                            //initialising children widgets of row

                         Container(
                        width:100.0, height: 150.0, margin: EdgeInsets.all(15.0),                           //setting width,height & margin attributes of Container
                        decoration: new BoxDecoration(                                                      //to add an image
                        image:  new DecorationImage(image: new AssetImage('images/Chilli.jpg'),             //defining path of image
                          ),
                      ),
                    ),
                        Container(
                          width:100.0, height: 150.0,  margin: EdgeInsets.all(15.0),
                          decoration: new BoxDecoration(                                             //to add an image
                            image:  new DecorationImage(image: new AssetImage('images/Cumin.jpg'),
                            ),
                          ),
                        ),
                        Container(
                          width:100.0, height: 150.0,  margin: EdgeInsets.all(15.0),
                          decoration: new BoxDecoration(                                             //to add an image
                            image:  new DecorationImage(image: new AssetImage('images/Coriander.jpg'),
                            ),
                          ),
                        ),
                     ]
            ),
            Row(
              children: <Widget>[
                Container(
                  width:100.0, height: 150.0, margin: EdgeInsets.all(15.0),
                  decoration: new BoxDecoration(                            //to add an image
                    image:  new DecorationImage(image: new AssetImage('images/lemon.jpg'),
                    ),
                  ),
                ),
                Container(
                  width:100.0, height: 150.0,  margin: EdgeInsets.all(15.0),
                  decoration: new BoxDecoration(                                             //to add an image
                    image:  new DecorationImage(image: new AssetImage('images/Ladyfinger.jpg'),
                    ),
                  ),
                ),
                Container(
                  width:100.0, height: 150.0,  margin: EdgeInsets.all(15.0),
                  decoration: new BoxDecoration(                                             //to add an image
                    image:  new DecorationImage(image: new AssetImage('images/turmeric.jpeg'),
                    ),
                  ),
                ),
              ],
            )
          ]
      ),
    );
  }
}


