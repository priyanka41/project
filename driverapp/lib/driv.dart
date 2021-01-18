


  import 'package:driverapp/main_drawer.dart';
  import 'package:flutter/material.dart';
  import 'main_drawer.dart';
  import 'MyBottomNavigationBar.dart';

  void main() => runApp(MyApp());
  class MyApp extends  StatelessWidget {
    @override
    Widget build(BuildContext context) {
       
      return MaterialApp(
        debugShowCheckedModeBanner: false,
          routes:<String , WidgetBuilder>{
          '/MyBottomNavigationBar' :(BuildContext context) => new MyBottomNavigationBar(),
        },

        home: new NewPage(),
        
        
      );
    }
  }
 class NewPage extends StatefulWidget {
   @override
   _NewPageState createState() => _NewPageState();
 }
 
 class _NewPageState extends State<NewPage> {
   @override
   Widget build(BuildContext context) {
      
     return Scaffold(
         appBar:AppBar(
           backgroundColor: Colors.green,
           actions:<Widget> [
           IconButton(
                icon: Icon(
                  Icons.settings,
                  color:  Colors.white,
                ),
                onPressed: (){
                  //do something
                },
              ),
             ],
           ) ,
             drawer: MainDrawer(),
           body: SingleChildScrollView(
                        child: Column(
               children:<Widget>[
                  Card(
                      elevation: 2.0,
                     child: ListTile(
                       leading: CircleAvatar(
                       backgroundImage: AssetImage("assets/m1pes.jpg"),
                         radius: 50.0,
                         ),
                        
                     title: Text("Ram (btl-bhw)"),
                     subtitle: Text("NPR50"),
                   ),
                 ),

                 Card(
                      elevation: 2.0,
                     child: ListTile(
                       leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/f1pes.jpg"),
                         radius: 50.0,
                         ),
                        
                     title: Text("jyoti (btl-palpa)"),
                     subtitle: Text("NPR100"),
                   ),
                 ),

                  Card(
                      elevation: 2.0,
                     child: ListTile(
                       leading: CircleAvatar(
                       backgroundImage: AssetImage("assets/f4pes.jpg"),
                         radius: 50.0,
                         ),
                        
                     title: Text("krisha (btl-bhw)"),
                     subtitle: Text("NPR40"),
                   ),
                 ),
 
                Card(
                      elevation: 2.0,
                     child: ListTile(
                       leading: CircleAvatar(
                         backgroundImage: AssetImage("assets/m2pes.jpg"),
                        radius: 50.0,
                         ),
                        
                     title: Text("Tejes (btl-bhw)"),
                     subtitle: Text("NPR50"),
                   ),
                 ),

                 Card(
                      elevation: 2.0,
                     child: ListTile(
                       leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/f5pes.jpg"),
                        radius: 50.0,
                         ),
                        
                     title: Text("Rita (btl-chitwan)"),
                     subtitle: Text("NPR135"),
                   ),
                 ), 
                    
                   Card(
                      elevation: 2.0,
                     child: ListTile(
                       leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/f3pes.jpg"),
                         radius: 50.0,
                         ),
                        
                     title: Text(" janaki (btl-bhw)"),
                     subtitle: Text("NPR60"),
                   ),
                 ),

                //  Card(
                //       elevation: 2.0,
                //      child: ListTile(
                //        leading: CircleAvatar(
                //       radius: 50.0,
                //       backgroundImage: AssetImage("assets/cabps.jpg"),    
                //          ),
                        
                //      title: Text("Ramesh (btl-belbas)"),
                //      subtitle: Text("NPR35"),
                //    ),
                //  ),

                //   Card(
                //       elevation: 2.0,
                //      child: ListTile(
                //        leading: CircleAvatar(
                //       radius: 50.0,
                //       backgroundImage: AssetImage(" assets/f6pes.jpeg"),    
                //          ),
                        
                //      title: Text("Yukti (btl-khaireni)"),
                //      subtitle: Text("NPR45"),
                //    ),
                //  ),

              ],
               ),
         ),
    );
  }
  }