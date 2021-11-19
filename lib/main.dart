// import 'dart:html';

import 'package:flutter/material.dart';


void main() => runApp(MyApp());


// void main() => runApp(MaterialApp(
//   home: QuoteList()
// ));

// class QuoteList extends StatelessWidget {
//   @override
//   _QuoteListState createState() => _QuoteListState();
// }

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
    '2- oranfe',
    '3- watermelone',
    '4- banana'
    
  ];

  // var X = "pick a frutie";
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



        Text('${fruties[input]}',

          // padding: EdgeInsets.all(10),
        
        ),

        //  Text(X),

        //  Text('\n\n'),
        //  Text(input),
          // ignore: prefer_const_constructors
          TextField(
                // ignore: prefer_const_constructors
              decoration: InputDecoration(
                // border: InputBorder.none,
                  hintText: "Type a Question...",
                      // ignore: prefer_const_constructors
                  hintStyle: TextStyle(
                    fontSize: 25,

              )
              
              ),
              
              onChanged: (String text){
                var Y = int.parse(text);
                if (Y<4 && Y>=0){

                   setState(() {
                  input = Y;
                  
                });
                }
                
                
                print(input);
               

              },
              ),

                // if(input == 1)
                // Text("hi")
                // else {

                // }




              // if(input == 1){
              //     print(List[0]);
              //    }else{
              //        print("choose number"]);
              //   }

              




        ],



      ),
    ),
    );
  }
}