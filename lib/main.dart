import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Random random = Random();

  int x = 0;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lottery App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery winning number is 4 ')),
           // Text( x > 5 ? 'x is grater than 5' : x.toString())
            SizedBox(height: 20,),
            Container(
              height: x == 4 ? 600 : 250,
              width: 350,
              decoration: BoxDecoration(
                color: x == 4 ? Colors.teal : Colors.grey.withOpacity(.2),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: x == 4 ?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done, color: Colors.green, size: 35,),
                    SizedBox(height: 20,),
                    Text('Congratulation you have win the lottery, your number is $x' , textAlign: TextAlign.center,)
                  ],
                ) :
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.error, color: Colors.red, size: 35,),
                      SizedBox(height: 20,),
                      Text('Better luck next time your number is  $x \n try again' , textAlign: TextAlign.center,)
                    ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
           // print(random.nextInt(10).toString());
            x = random.nextInt(5);
            print('tap $x',);
            setState(() {

            });
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}


// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   int x = 0;
//   //This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     print("rebuild");
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('My First App'),
//         ),
//         body: SafeArea(
//           child: Center(
//               child: Text(
//                 x.toString(),
//                 style: TextStyle(fontSize: 50),
//               )),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             x++;
//             setState(() {
//
//             });
//             print(x.toString());
//           },
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }
