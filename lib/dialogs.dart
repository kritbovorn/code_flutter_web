import 'package:beginner/custom_dialog_box.dart';
import 'package:flutter/material.dart';

class Dialogs extends StatefulWidget {
  const Dialogs({ Key? key }) : super(key: key);

  @override
  _DialogsState createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        title: const Text("Custom Dialog in Flutter"),
        automaticallyImplyLeading: false,
      ),
      body: SizedBox(  
        child: Center(  
          child: ElevatedButton(  
            onPressed: () {
              showDialog(context: context, builder: (BuildContext context) {
                return const CustomDialogBox(  
                  title: "Custom Dialog Demo",
                  descriptions: "Hii all this is a custom dialog in flutter and  you will be use in your flutter applications",
                  text: 'Yes',
                  img: Image(image: AssetImage('assets/devs.jpg')),
                );
              });
            },
            child: const Text("Custom Dialog"),
          ),
        ),
      ),
    );
  }
}