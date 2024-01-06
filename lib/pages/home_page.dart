import 'package:data_guard/buttons/pulse_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1F29),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // the on button
            pulseButton(
              onTap: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            // tap to turn on text
            const Text(
              "T a p   T o   T u r n   O n",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
