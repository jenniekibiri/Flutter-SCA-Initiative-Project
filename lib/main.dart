import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyCalc',
      theme: ThemeData.dark(),
      home: MyHomePage(),
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
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('My Calc'),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom:40.0, top: 15.0, left: 40.0, right: 40.0),
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
                keyboardType: TextInputType.number,
                cursorColor: Colors.purpleAccent,
                decoration: InputDecoration(
                  labelText: 'output',
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17.0),
                  ),
                  hintText: 'Result: output',
                  hintStyle: TextStyle(
                    color: Colors.purpleAccent,
                    fontSize: 15.0,
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          TextField(
            keyboardType: TextInputType.number,
            cursorColor: Colors.purpleAccent,
            decoration: InputDecoration(
              labelText: 'first number',
              fillColor: Colors.white,
              hintText: 'Enter your First number',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          TextField(
            keyboardType: TextInputType.number,
            cursorColor: Colors.deepPurple,
            decoration: InputDecoration(
              labelText: 'second number',
              fillColor: Colors.white,
              hintText: 'Enter your second number',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               MaterialButton(
                child: Text('+'),
                shape: StadiumBorder(),
                color: Colors.deepPurple,
                onPressed: () {},
              ),
                MaterialButton(
                child: Text('-', style: TextStyle(fontWeight: FontWeight.bold),),
                shape: StadiumBorder(),
                color: Colors.deepPurple,
                onPressed: () {},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            
              MaterialButton(
                child: Text('*'),
                shape: StadiumBorder(),
                color: Colors.deepPurple,
                onPressed: () {},
              ),
              MaterialButton(
                child: Text('/'),
                shape: StadiumBorder(),
                color: Colors.deepPurple,
                onPressed: () {},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                child: Text('clear'),
                shape: StadiumBorder(),
                 padding: EdgeInsets.only(left: 120.0, right: 120.0, top: 12.0, bottom: 12.0),
                color: Colors.deepPurple,
                onPressed: () {},
              ),
            ],
          )
        ],
      )),
    );
  }
}
