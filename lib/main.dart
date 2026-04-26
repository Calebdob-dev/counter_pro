import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  void increase() {
    setState(() {
      count++;
    });
  }

  void decrease() {
    setState(() {
      count--;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
            'Counter App',
            style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 240),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Counter Value",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),


              SizedBox(height: 20),

              Text(
                "$count",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                height: 50,
                color: Colors.grey,
              ),

              SizedBox(height: 1),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: increase,
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(170, 60),
                    ),
                    child: Text(
                        'Increase',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),

                    ),
                  ),

                  SizedBox(height: 15),

                  ElevatedButton(
                    onPressed: decrease,
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(170, 60),
                    ),
                    child: Text(
                        'Decrease',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                    ),
                  ),

                  SizedBox(height: 15),

                ],
              ),
              SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: reset,
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(170, 60),
                    ),
                    child: Text(
                        'Reset',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}