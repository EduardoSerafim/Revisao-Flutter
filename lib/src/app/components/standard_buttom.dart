import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class StandartButtom extends StatelessWidget {
  final Function()? onPressed;
  final String buttonText;
  StandartButtom({required this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kIsWeb ? 200 : double.infinity,
      height: 40,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(buttonText),
        
      ),
    );
  }
}
 