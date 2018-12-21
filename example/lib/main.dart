import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Gradient Text Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Gradient gradient = LinearGradient(
      colors: [Colors.deepPurple, Colors.deepOrange, Colors.pink]);
  bool shadow = false;
  bool small = false;
  bool bold = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Card(
                elevation: 3,
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GradientText(
                  'Linear Gradient',
                  gradient: gradient,
                  style: TextStyle(
                    fontSize: (small) ? 14 : 42,
                    shadows: (shadow) ? [Shadow(color: Colors.black26, offset: Offset(0, 3), blurRadius: 3)] : null,
                    fontWeight: (bold) ? FontWeight.bold : FontWeight.normal
                  ),
                ),
              )),

              CheckboxListTile(title: Text("Shadow"), value: shadow, onChanged: (isOn) {
                debugPrint("OnChanged");
                setState(() {
                  shadow = isOn;
                });
              }),
              CheckboxListTile(title: Text("Bold"), value: bold, onChanged: (isOn) {
                debugPrint("OnChanged");
                setState(() {
                  bold = isOn;
                });
              }),
              CheckboxListTile(title: Text("Small"), value: small, onChanged: (isOn) {
                debugPrint("OnChanged");
                setState(() {
                  small = isOn;
                });
              }),
              Wrap(
                spacing: 10,
                alignment: WrapAlignment.center,
                children: <Widget>[
                RaisedButton(child: Text("Linear Gradient", style: TextStyle(color: Colors.white)), color: Colors.purple, onPressed: (){
                  setState(() {
                    gradient = LinearGradient(
                        colors: [Colors.deepPurple, Colors.deepOrange, Colors.pink]);
                  });
                },),
                RaisedButton(child: Text("Radial Gradient", style: TextStyle(color: Colors.white)), color: Colors.pink, onPressed: (){
                  setState(() {
                    gradient = RadialGradient(
                        colors: [Colors.deepPurple, Colors.deepOrange, Colors.pink]);
                  });
                },),
                RaisedButton(child: Text("Sweep Gradient", style: TextStyle(color: Colors.white)), color: Colors.deepOrange, onPressed: (){
                  setState(() {
                    gradient = SweepGradient(
                        colors: [Colors.deepPurple, Colors.deepOrange, Colors.pink]);
                  });
                },)
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
