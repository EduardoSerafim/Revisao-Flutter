import 'package:flutter/material.dart';

class StandartCardContent extends StatelessWidget {
  
  final String leftText;
  final String rightText;

  StandartCardContent({required this.leftText, required this.rightText});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), 
        border: Border.all(color: Colors.black, width: 2)
      ),
      height: 60,
      
      child: Row(
        children: [
          Text(leftText),
          Spacer(),
          Text(rightText),

      ]), 
    );
  }
}
