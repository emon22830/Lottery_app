import 'package:flutter/material.dart';

void main() {
  runApp(LotteryApp());
}

class LotteryApp extends StatefulWidget {
  const LotteryApp({super.key});

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {

  int x =4;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Lottery App'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery winning number is $x')),
         Container(
           height: 250,
           child: Column(
             children: [

             ],
           )
         )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){

            },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
