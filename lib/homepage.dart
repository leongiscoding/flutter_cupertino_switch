import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool switchvalue = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cupertino Switch Example"),
      ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Switch Value"),
              CupertinoSwitch(
                  value: switchvalue,
                  onChanged: (value){
                    setState(() {
                      switchvalue = value;
                    });
                  }
                  ),
              SizedBox(height: 20.0,),
              Text(
                "switch is ${switchvalue ? "on" : "off"}",
              ),
            ],
          ),
        ),
    );
  }
}
