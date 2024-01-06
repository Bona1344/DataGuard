import 'package:data_guard/buttons/my_button.dart';
import 'package:flutter/material.dart';

class pulseButton extends StatefulWidget {
  final void Function()? onTap;

  pulseButton({Key? key, required this.onTap}) : super(key: key);

  @override
  State<pulseButton> createState() => _MyOnButtonState();
}

class _MyOnButtonState extends State<pulseButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;
  bool isTapped = true;

  @override
  void initState() {
    super.initState();

    // Set up animation controller
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    )..repeat();

    // Set up tween for pulsating effect
    _fadeAnimation = Tween<double>(begin: 1.0, end: 1.4).animate(_controller);
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.2).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.center, children: [
      // The inner pulsating power icon
      /* ScaleTransition(
        scale: _fadeAnimation,
        child: FadeTransition(
          opacity: _scaleAnimation,
          child: const Icon(
            Icons.power_settings_new_rounded,
            size: 100,
            color: Colors.white,
          ),
        ),
      ), */

      // outter pulsating circle

      if (isTapped)
        FadeTransition(
          opacity: _scaleAnimation,
          child: ScaleTransition(
            scale: _fadeAnimation,
            child: Container(
              width: 100 * 1.5,
              height: 100 * 1.5,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFD5EF3),
                    Color(0x4DD4FF),
                  ],
                ),
              ),
            ),
          ),
        ),
      //mybutton
      const MyButton(),
    ]);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
