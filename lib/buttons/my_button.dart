import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final void Function()? onTap;
  const MyButton({super.key, required this.onTap});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return // The on button
        GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 150,
        height: 150,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Color(0xFFFD5EF3),
              Color(0x4DD4FF),
            ],
          ),
        ),
        child: const Center(
          child: Icon(
            Icons.power_settings_new_rounded,
            size: 100,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
