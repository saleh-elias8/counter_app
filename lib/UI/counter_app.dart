import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CounterState();
  }

}

class CounterState extends State<CounterApp> {
  int _counter = 0;

  void setCounterValue() async {
    setState((){
      _counter = _counter +1;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("My Counter"),
        backgroundColor: Colors.lightBlue,
      ),
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Center(
            child: Text("Counter App",style: TextStyle(fontSize: 28,color: Colors.blue,fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(child: Center(
            child: Text("$_counter",style: TextStyle(color: Colors.lightBlue,fontSize: 25.5,fontWeight: FontWeight.w500),
            ),
          )),
          Expanded(child: Center(
            child: FlatButton(
                onPressed: setCounterValue,
                color: Colors.blueAccent,
                child: Text("Add",style: TextStyle(color: Colors.white, fontSize: 20),
                ),

            ),
          ))
        ],
      ),
    );
  }
}


