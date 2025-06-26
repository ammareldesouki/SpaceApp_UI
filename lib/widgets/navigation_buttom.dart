import 'package:flutter/material.dart';

class TNavigationButton extends StatelessWidget {
  const TNavigationButton({super.key, required this.title, this.onprees});
  final String title;
  final VoidCallback? onprees;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 5,
      right: 0,
      left: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SizedBox(
          height: 60,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onprees,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: TextStyle(color: Colors.white)),
                Icon(Icons.navigate_next, color: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
