import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String labelButton;
  final String namImage;
  const MyButton(
      {super.key, required this.labelButton, required this.namImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 85,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(50)),
          child: Center(
            child: Image.asset("assets/image/$namImage"),
          ),
        ),
        Text(
          labelButton,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
