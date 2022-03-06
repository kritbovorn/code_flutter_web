import 'package:flutter/material.dart';

  void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = "Flutter";

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: HomePage(title: "Flutter Get Size"),
    );
  }
}

      //  ***** 1.  ต้องทำใน StatefulWidget  2.  ตัวแปรคีย์ บรรทัดที่ 34, 35  ต้อง ประกาศด้วย =   final variable = GlobalKey();

// *** Parent Widget
class HomePage extends StatefulWidget {

  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final keyTextOne = GlobalKey();       //      1. ประกาศตัวแปร  local  เพื่อแทนค่า
  final keyTextTwo = GlobalKey();       //      1. ประกาศตัวแปร  local  เพื่อแทนค่า
  double widthKeyOne = 0.0;       //      1. ประกาศตัวแปร  local  เพื่อแทนค่า
  double widthKeyTwo = 0.0;       //      1. ประกาศตัวแปร  local  เพื่อแทนค่า


  //  2.  สร้าง Fuction มารับค่า : โดยใช้  :  keyTextOne.currentContext!.size!.width
  findSize(BuildContext context) {
    setState(() {
      widthKeyOne = keyTextOne.currentContext!.size!.width;   //  3.  Result ที่ได้
      widthKeyTwo = keyTextTwo.currentContext!.size!.width;   //  3.  Result ที่ได้

      debugPrint("Width 1: $widthKeyOne");
      debugPrint("Width 2: $widthKeyTwo");
    });
  }

  //  4.  Initial State : ทันที่ ที่ App โหลด
  @override
  void initState() {
    super.initState();
    
    // 5.  WidgetsBinding.instance!.addPostFrameCallback((_) => myFunction(context));
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) => findSize(context));   //  5.  หน่วงเวลา ก่อนโหลดเสร็จ
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            child: ChildWidget(keyOne: keyTextOne, keyTwo: keyTextTwo, valueOne: widthKeyOne, valueTwo: widthKeyTwo,), // 6  ส่งค่าที่ได้ไปให้ลูก Child
          ),

        ],
      ),
    );
  }
}

// ***  Widget ลูก Child:  1. สร้าง Key และ ตัวแปรอื่น  มารอรับค่าจากแม่ Parent
class ChildWidget extends StatefulWidget {

  final GlobalKey keyOne;   // 1.
  final GlobalKey keyTwo;   // 1.
  final double valueOne;    // 1.
  final double valueTwo;    // 1.

  const ChildWidget({Key? key, required this.keyOne, required this.keyTwo, required this.valueOne, required this.valueTwo}) : super(key: key);

  @override
  State<ChildWidget> createState() => _ChildWidgetState();
}

class _ChildWidgetState extends State<ChildWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(  
          "ant + ${widget.valueOne}",
          key: widget.keyOne, // 2.  ใส่ค่า Key ที่ได้ประกาศไว้ โดยตามหลัง widget ( this )
        ),
        Text( 
          "ant แปลว่า + ${widget.valueTwo}",
          key: widget.keyTwo, // 2.  ใส่ค่า Key ที่ได้ประกาศไว้ โดยตามหลัง widget ( this )
        )
      ],
    );
  }
}