import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          body: gridexam(),
        ));
  }
}

class gridexam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black87, width: 2),
            color: Colors.black38),
        child: GestureDetector(
          onPanUpdate: (detail) {
            print("its Dragged");
            print("global dx : " + detail.globalPosition.dx.toString());
            print("global dy : " + detail.globalPosition.dy.toString());

            RenderBox box = context.findRenderObject() as RenderBox;
            Offset local = box.globalToLocal(detail.globalPosition);

            print("local dx : " + local.dx.toString());
            print("local dy : " + local.dy.toString());
          },
        ),
      ),
    );
  }
}
