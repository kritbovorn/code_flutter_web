import 'package:flutter/material.dart';

class CustomCircleIconButton extends StatelessWidget {
  final IconData icon;
  final int index;    // รับค่า index เมือคลิกที่ปุ่ม
  final int selectIndex;  //  &&&  เมือ State เปลี่ยนค่า
  final VoidCallback onTap;   //  ส่ง Function

  const CustomCircleIconButton(
      {Key? key,
      required this.icon,
      required this.index,
      required this.selectIndex,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 30.0),
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: selectIndex == index
              ? Theme.of(context).colorScheme.secondary
              : const Color(0xffe7ebee),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          icon,
          size: 24,
          color: selectIndex == index
              ? const Color.fromARGB(255, 246, 248, 245)
              : Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
