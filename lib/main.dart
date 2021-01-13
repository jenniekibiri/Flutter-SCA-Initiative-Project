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
  double output = 0, num1 = 0, num2 = 0;
  TextEditingController t1 = TextEditingController(text: "");
  TextEditingController t2 = TextEditingController(text: "");


  doAddition() {
  setState(() {
    num2 = double.parse(t2.text);
    num1 = double.parse(t1.text);
    output= num1 + num2;
  });
}

doSubstraction() {
  setState(() {
    num2 = double.parse(t2.text);
    num1 = double.parse(t1.text);
    output= num1 - num2;
  });
}

doMultiplication() {
  setState(() {
    num2 = double.parse(t2.text);
    num1 = double.parse(t1.text);
    output= num1 * num2;
  });
}

doDivision() {
  setState(() {
    num2 = double.parse(t2.text);
    num1 = double.parse(t1.text);
    output= (num1 / num2);
  });
}

doClear() {
  setState(() {
    t1 = TextEditingController(text: '');
    t2 = TextEditingController(text: '');
    output= 0;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('My Calc'),
      ),
      body: Container(
          padding:
              EdgeInsets.only(bottom: 40.0, top: 15.0, left: 40.0, right: 40.0),
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
                      hintText: 'output: $output',
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
                controller: t1,

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
                controller: t2,
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
                    padding: EdgeInsets.only(
                        left: 50.0, right: 50.0, top: 12.0, bottom: 12.0),
                    onPressed: () {
                    //TODO:
                    doAddition();
                  },
                  ),
                  MaterialButton(
                    child: Text(
                      '-',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    shape: StadiumBorder(),
                    color: Colors.deepPurple,
                    padding: EdgeInsets.only(
                        left: 50.0, right: 50.0, top: 12.0, bottom: 12.0),
                     onPressed: () {
                    //TODO:
                    doSubstraction();
                  },
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    child: Text('*'),
                    shape: StadiumBorder(),
                    color: Colors.deepPurple,
                    padding: EdgeInsets.only(
                        left: 50.0, right: 50.0, top: 12.0, bottom: 12.0),
                  onPressed: () {
                    //TODO:
                    doMultiplication();
                  },
                  ),
                  MaterialButton(
                    child: Text('/'),
                    shape: StadiumBorder(),
                    color: Colors.deepPurple,
                    padding: EdgeInsets.only(
                        left: 50.0, right: 50.0, top: 12.0, bottom: 12.0),
                    onPressed: () {
                    //TODO:
                    doDivision();
                  },
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    child: Text('clear'),
                    shape: StadiumBorder(),
                    padding: EdgeInsets.only(
                        left: 120.0, right: 120.0, top: 12.0, bottom: 12.0),
                    color: Colors.red,
                    onPressed: () {},
                  ),
                ],
              )
            ],
          )),
    );
  }
}
