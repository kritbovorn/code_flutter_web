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
      home: HomePage(title: "Flutter Position"),
    );
  }
}

class HomePage extends StatefulWidget {

  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final widgetKey = GlobalKey();
  late Size widgetSize;
  late Offset position;

  findWidgetPosition(BuildContext context) {
    setState(() {
      
      final RenderBox renderBox = widgetKey.currentContext?.findRenderObject() as RenderBox;

      widgetSize = renderBox.size;
      debugPrint("Width is: ${widgetSize.width}");
      debugPrint("Height is: ${widgetSize.height}");

      position = renderBox.localToGlobal(Offset.zero);
      debugPrint("Offset is: ${position.dx}, ${position.dy}");
      debugPrint("Position is: ${(position.dx + widgetSize.width) / 2}, ${(position.dy + widgetSize.height) / 2}");
    });
  }

  @override
  void initState() {

    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) => findWidgetPosition(context));

    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          key: widgetKey,
          width: 200,
          height: 200,
          child: const Center(
            child: Text(  
              "Somethings always",
              // key: widgetKey,
            ),
          ),
        ),
      ),
    );
  }
}
