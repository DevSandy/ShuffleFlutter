import 'package:flutter/material.dart';
class Multiplex_Main_Screen extends StatefulWidget {
  const Multiplex_Main_Screen({Key? key}) : super(key: key);

  @override
  _Multiplex_Main_ScreenState createState() => _Multiplex_Main_ScreenState();
}

class _Multiplex_Main_ScreenState extends State<Multiplex_Main_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Bottom padding 60"),
      ),
    );
  }
}
