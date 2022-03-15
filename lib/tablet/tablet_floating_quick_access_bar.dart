import 'package:flutter/material.dart';

class TabletFloatingQuickAccessBar extends StatelessWidget {

final List<Widget> items;

const TabletFloatingQuickAccessBar({ Key? key, required this.items }) : super(key: key);

  @override
  Widget build(BuildContext context){

    var screenSize = MediaQuery.of(context).size;
    
    return Padding(
      padding: EdgeInsets.only(top: screenSize.height * 0.42),
      child: Row(  
        children: [
          const Expanded(child: SizedBox(),),

          Expanded( 
            flex: 2, 
            child: Card( 
              color: Colors.black, 
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),  
                child: Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                  children: items,
                ),
              ),
            ),
          ),
          
          const Expanded(child: SizedBox(),),
        ],
      ),
    );
  }
}