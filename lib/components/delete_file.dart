import 'package:flutter/material.dart';
import 'package:quickdrop/enums/file_expiration.dart';

class DeleteFile extends StatefulWidget {
  const DeleteFile({
    super.key,
  });

  @override
  State<DeleteFile> createState() => _DeleteFileState();
}

class _DeleteFileState extends State<DeleteFile> {
  final TextEditingController expirationFileController =
      TextEditingController();
  FileExpiration? selectedFileExpiration;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Delete?'),
      content: const Text('Are you sure you want to delete this file?'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('Delete'),
        ),
      ],
    );
  }
}
