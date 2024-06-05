import 'package:flutter/material.dart';
import 'package:quickdrop/const/colors.dart';
import 'package:quickdrop/helper.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Button(
            text: 'Upload',
            backgroundColor: AppColors.secondary,
            icon: Icons.cloud_upload),
        SizedBox(width: 10),
        Button(
            text: 'Download',
            backgroundColor: AppColors.primary,
            icon: Icons.cloud_download),
      ],
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    required this.icon,
    required this.backgroundColor,
  });

  final String text;
  final IconData icon;
  final int backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FilledButton(
      onPressed: () => {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Color(backgroundColor)),
        foregroundColor: WidgetStateProperty.all(Colors.white),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        overlayColor: WidgetStateProperty.all(darken(Color(backgroundColor))),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            Icon(
              icon,
              size: 50,
            ),
            const SizedBox(height: 10),
            Text(
              text,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
