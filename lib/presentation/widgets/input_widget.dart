import 'package:flutter/material.dart';

class WalletInputWidget extends StatelessWidget {
  const WalletInputWidget({
    required this.title,
    required this.description,
    this.onChanged,
    this.controller,
    this.obscureText = false,
    Key? key,
  }) : super(key: key);

  final String title;
  final String description;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF1C1C26),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                hintText: description,
                hintStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              obscureText: obscureText,
              obscuringCharacter: '*',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
              cursorWidth: 1,
              cursorColor: Colors.white,
              onChanged: onChanged,
            )
          ],
        ),
      ),
    );
  }
}
