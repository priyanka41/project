import 'package:driverapp/driv.dart';
import 'package:flutter/material.dart';

import 'signup.dart';

import 'driv.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage(),
        '/driv' :(BuildContext context) => new NewPage(),
        
      },
      home: new MyHomePage(),
    
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding:false,
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding:  EdgeInsets.fromLTRB(10.0,65.0,0,0),
                    child: Text(
                      "Login", style: TextStyle(
                        fontSize:55.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding:  EdgeInsets.fromLTRB(10.0,125.0,0,20.0),
                    child: Text(
                      "Here", style: TextStyle(
                        fontSize:55.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              Container(
                  child: Padding(
                    padding:  EdgeInsets.fromLTRB(125.0,95.0,0,20.0),
                    child: Text(
                      ".", style: TextStyle(
                        fontSize:85.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
         Container(
           padding: EdgeInsets.only(left:10.0,right:10.0),
           child: Column(
             children: <Widget>[
               TextField(
                 keyboardType: TextInputType.emailAddress,
                 decoration: InputDecoration(
                   labelText: 'Email',
                   labelStyle: TextStyle(
                     fontFamily: "Montserrat",
                     fontWeight: FontWeight.bold,
                     color: Colors.grey,
                   ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                 ),
               ),
             SizedBox(height:20.0),
             TextField(
                 keyboardType: TextInputType.visiblePassword,
                 decoration: InputDecoration(
                   labelText: 'Password',
                   labelStyle: TextStyle(
                     fontFamily: "Montserrat",
                     fontWeight: FontWeight.bold,
                     color: Colors.grey,
                   ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                 ),
               obscureText: true,
               ),
             SizedBox(height:5.0),
             Container(
               alignment: Alignment(1.0, 0),
               child: Padding(
                 padding: EdgeInsets.only(top:20.0, left:20.0,bottom:25.0),
                 child: InkWell(
                   child: Text('Forget Password', 
                   style: TextStyle(
                     fontSize:17.0,
                     color: Colors.green,
                     fontWeight: FontWeight.bold,
                     fontFamily: "Montserrat",
                     decoration: TextDecoration.underline,
                   ),),
                 ),
               ),
             ),
            SizedBox(height:15.0),
            Container(
              height:40.0,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                shadowColor:  Colors.greenAccent,
                color: Colors.green,
                elevation: 7.0,
                child: GestureDetector(
                  onTap:  () {
                      Navigator.of(context).pushNamed('/driv');
                  },
                  child: Center(
                    child: Text("LOGIN",
                    style: TextStyle(
                      fontSize:18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                    ),
                    ),
                    ),
                ),
              ),
            ),
             ],
             ),
         ),
         SizedBox(height:20.0),
         Container(
           padding: EdgeInsets.only(top:35.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
              Text(
                "New To Spotify ?",
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Montserrat',
                ),
              ),
             SizedBox(width:10.0),
             InkWell(
               onTap: (){
                 Navigator.of(context).pushNamed('/signup');
              
               },
               child: Text(
                 'Register',
                 style: TextStyle(
                   fontSize:16.0,
                   color: Colors.green,
                   fontFamily: 'Montserrat',
                   fontWeight: FontWeight.bold,
                   decoration: TextDecoration.underline,
                 ),
               ),
             ),
             ],
           ),
         ),
        ],
      ),
    );
  }
}


































 