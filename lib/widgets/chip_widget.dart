import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  final String chipLabel;
  final VoidCallback? onTap; // Added optional onTap callback

  const ChipWidget({
    super.key,
    required this.chipLabel,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5), // Adds spacing
      child: GestureDetector(
        onTap: onTap,
        child: Chip(
          label: Text(
            chipLabel,
            style: const TextStyle(color: Colors.white), // Makes text readable
          ),
          backgroundColor: Colors.blue, // Sets chip background color
        ),
      ),
    );
  }
}
