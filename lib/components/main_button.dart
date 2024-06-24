import 'package:flutter/material.dart';
import 'package:quickdrop/components/upload_file.dart';
import 'package:quickdrop/const/colors.dart';
import 'package:quickdrop/helper.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Button(
            text: 'Upload',
            backgroundColor: AppColors.secondary,
            icon: Icons.cloud_upload,
            onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => const UploadFile())),
        const SizedBox(width: 10),
        Button(
            text: 'Download',
            backgroundColor: AppColors.primary,
            icon: Icons.cloud_download,
            onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      title: const Text('Get File'),
                      content: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Link or Code',
                            ),
                          )
                        ],
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('Get'),
                        ),
                      ],
                    ))),
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
    required this.onPressed,
  });

  final String text;
  final IconData icon;
  final int backgroundColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FilledButton(
      onPressed: onPressed,
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
