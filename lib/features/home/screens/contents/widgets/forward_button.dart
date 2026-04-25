import 'package:flutter/material.dart';


class Back_Button extends StatelessWidget {
  const Back_Button({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          padding: EdgeInsets.zero, // removes internal padding
          constraints: const BoxConstraints(),
          onPressed:
            onTap,
          icon: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFF0F0FE5),
            ),
            child: const Icon(Icons.arrow_back_ios_new_rounded, size: 25, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
