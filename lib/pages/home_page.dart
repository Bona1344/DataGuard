import 'package:data_guard/buttons/my_button.dart';
import 'package:data_guard/buttons/pulse_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isTapped = false;

  void onTapped() {
    setState(() {
      isTapped = !isTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1F29),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*
            here i merged the button and pulsating effect together in a way that
            when the app start the button doesn't pulsate until clicked after which it keeps 
            pulsating until clicked again.
            */
            isTapped
                ? MyButton(onTap: onTapped)
                : pulseButton(onPulseTap: onTapped),
            const SizedBox(
              height: 30,
            ),
            // tap to turn on text
            const Text(
              "T a p   T o   O n",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
