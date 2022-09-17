import 'package:flutter/material.dart';
void main() => runApp(MyApp());

 class MyApp extends StatefulWidget {
   const MyApp({Key? key}) : super(key: key);
   @override
   _MyAppState createState()=> _MyAppState();
 }
  class _MyAppState extends State<MyApp>{
  String name = '';
  bool shouldDisplay = false;
  @override
  Widget build(BuildContext context){
   return MaterialApp(home:Scaffold(
    appBar:AppBar(title: Text('Hello World'),),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children:[TextFormField(
          onChanged: (value) {
              setState(() {name=value;});
          },
        obscureText: false,
       decoration: const InputDecoration(
        border: OutlineInputBorder(),
       ),
       ),
        ElevatedButton( child: Text('click here'),
            onPressed:() {
             setState(() {
              shouldDisplay = !shouldDisplay;
             });
             shouldDisplay ? Text(name) : Spacer();
            }
            ),


       ],
      ),
    ),
   ),
   );
  }
  }
 //  void setState(Null Function() param0) {}
 // }