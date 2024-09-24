import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(LotteryApp());
}

class LotteryApp extends StatefulWidget {
  const LotteryApp({super.key});

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  Random random = Random();

  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
            Center(child: Text('Lottery winning number is 4')),
            SizedBox(
              height: 25,
            ),
            Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child:x==4?
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.done_outline,
                        size: 35,
                        color: Colors.green,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Congratulations Bro, You won the lottery \nyour number is $x',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ):
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error_outline,
                        size: 35,
                        color: Colors.red,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Better Luck for next time, \nyour number is $x try again',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // print(random.nextInt(10).toString());
            x = random.nextInt(6);
            print(x);
            setState(() {

            });
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
