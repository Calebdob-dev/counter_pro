import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
      debugShowCheckedModeBanner: false, // Removes the red "Debug" banner from the corner
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // Application State: current value of the counter
  int count = 0;

  // Function to increment the counter value
  void increase() {
    setState(() {
      count++;
    });
  }

  // Function to decrement the counter value
  void decrease() {
    setState(() {
      count--;
    });
  }

  // Function to set the counter back to zero
  void reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300], // Set light grey background for the app
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
          padding: EdgeInsets.only(bottom: 240), // Shifts the content slightly upwards
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

              // Display the current count from the state
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
                indent: 40, endIndent: 40,
              ),

              SizedBox(height: 1),

              // Horizontal row containing Increase and Decrease buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: increase,
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(170, 60),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.add,
                          size: 30,
                          color: Colors.black,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Increase',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 15),

                  ElevatedButton(
                    onPressed: decrease,
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(170, 60),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.remove,
                          size: 30,
                          color: Colors.black,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Decrease',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Reset button section
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: reset,
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(170, 60),
                    ),

                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.refresh,
                          size: 30,
                          color: Colors.black,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Reset',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
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