import 'package:flutter/material.dart';
import 'package:quickdrop/enums/file_expiration.dart';

class UpdateFile extends StatefulWidget {
  const UpdateFile({
    super.key,
  });

  @override
  State<UpdateFile> createState() => _UpdateFileState();
}

class _UpdateFileState extends State<UpdateFile> {
  final TextEditingController expirationFileController =
      TextEditingController();
  FileExpiration? selectedFileExpiration;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Settings'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DropdownMenu<FileExpiration>(
            expandedInsets: EdgeInsets.zero,
            initialSelection: FileExpiration.burnAfterRead,
            controller: expirationFileController,
            label: const Text('Expiration File'),
            onSelected: (FileExpiration? fileExpiration) {
              setState(() {
                selectedFileExpiration = fileExpiration;
              });
            },
            dropdownMenuEntries: FileExpiration.values
                .map<DropdownMenuEntry<FileExpiration>>(
                    (FileExpiration expiration) {
              return DropdownMenuEntry<FileExpiration>(
                value: expiration,
                label: expiration.label,
              );
            }).toList(),
          ),
          const SizedBox(height: 15),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          )
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('Save'),
        ),
      ],
    );
  }
}
