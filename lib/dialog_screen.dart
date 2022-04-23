import 'package:beginner/custom_dialog_box.dart';
import 'package:flutter/material.dart';

class DialogScreen extends StatefulWidget {
  const DialogScreen({Key? key}) : super(key: key);

  @override
  _DialogScreenState createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Custom Dialog In Flutter'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Custom Dialog'),
          onPressed: () => showDialog(
              barrierColor: Colors.black38,
              context: context,
              builder: (BuildContext context) {
                return const CustomDialogBox(
                  title: 'Custom Dialog Demo',
                  description:
                      "Hii all this is a custom dialog in flutter and  you will be use in your flutter applications",
                  text: 'Yes',
                  img: AssetImage('assets/model.jpeg'),
                );
              }),
        ),
      ),
    );
  }
}
