import 'package:flutter/material.dart';
import 'package:quickdrop/enums/file_download_limit.dart';
import 'package:quickdrop/enums/file_expiration.dart';

class UploadFile extends StatefulWidget {
  const UploadFile({
    super.key,
  });

  @override
  State<UploadFile> createState() => _UploadFileState();
}

class _UploadFileState extends State<UploadFile> {
  final TextEditingController expirationFileController =
      TextEditingController();
  final TextEditingController fileDownloadLimitController =
      TextEditingController();
  FileExpiration? selectedFileExpiration;
  FileDownloadLimit? selectedFileDownloadLimit;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Upload File'),
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
          DropdownMenu<FileDownloadLimit>(
            expandedInsets: EdgeInsets.zero,
            initialSelection: FileDownloadLimit.one,
            controller: fileDownloadLimitController,
            label: const Text('Download Limit'),
            onSelected: (FileDownloadLimit? fileDownloadLimit) {
              setState(() {
                selectedFileDownloadLimit = fileDownloadLimit;
              });
            },
            dropdownMenuEntries: FileDownloadLimit.values
                .map<DropdownMenuEntry<FileDownloadLimit>>(
                    (FileDownloadLimit limit) {
              return DropdownMenuEntry<FileDownloadLimit>(
                value: limit,
                label: limit.label,
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
