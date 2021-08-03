import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List color = [
    Colors.red[200],
    Colors.red[700],
    Colors.pink[100],
    Colors.pink[500],
    Colors.pink[900],
    Colors.purple[200],
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double position = 150.0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Listview and Stack'),
        backgroundColor: Colors.blue[900],
        actions: [IconButton(icon: Icon(Icons.more_vert), onPressed: () {})],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 12),
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: color.length * position,
                  decoration: BoxDecoration(
                    color: Colors.red[200],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      '0',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                for (int index = 1; index < color.length; index++)
                  Positioned(
                    top: position * index,
                    right: 0,
                    left: 0,
                    child: Container(
                      width: size.width,
                      height: 180,
                      decoration: BoxDecoration(
                        color: color[index],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          index.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
