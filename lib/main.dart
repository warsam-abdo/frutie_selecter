
import 'package:flutter/material.dart';


void main() => runApp(MyApp());




class MyApp extends  StatefulWidget {


      @override 
      
      State<StatefulWidget> createState(){

        return MyAppState();
      }

}

class MyAppState extends State<MyApp> {

  List<String> fruties = [
    '',
    '1- apple',
    '2- orange',
    '3- watermelone',
    '4- banana'
    
  ];


  var input = 0;

  @override
Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('fruties picker'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
                Text('\n\n\n'),


        Text('${fruties[input]}',
          
          
          textAlign: TextAlign.center,
          style:TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        
        ),
          
           Text('\n\n'),
        
          // ignore: prefer_const_constructors
          TextField(

           textAlign: TextAlign.center,
            style:TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          
                // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // border: InputBorder.none,
                  hintText: "choose your lucky fruitie from 0-4",
                      // ignore: prefer_const_constructors
                  hintStyle: TextStyle(
                    fontSize: 25,

              )
              
              ),
              
              onChanged: (String text){
                var Y = int.parse(text);
                if (Y<=4 && Y>=0){

                   setState(() {
                  input = Y;
                  
                });
                }
                
                
                print(input);
               

              },
              ),

               




              

              




        ],



      ),
    ),
    );
  }
}