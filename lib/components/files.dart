import 'package:flutter/material.dart';
import 'package:quickdrop/components/detail_file.dart';
import 'package:quickdrop/helper.dart';

class Files extends StatelessWidget {
  const Files({super.key});

  @override
  Widget build(BuildContext context) {
    return FileList(files: [
      File(
          imageUrl: 'https://cdn-icons-png.flaticon.com/512/4404/4404094.png',
          name: 'Cooking Video',
          size: '512 MB',
          type: 'Video'),
      File(
          imageUrl:
              'https://c8.alamy.com/comp/2PKEXA4/vinnitsa-ukraine-december-30-2022-adobe-photoshop-logo-icon-2PKEXA4.jpg',
          name: 'Design File',
          size: '2 MB',
          type: 'Image'),
      File(
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/1869px-Python-logo-notext.svg.png',
          name: 'Python Code',
          size: '112 KB',
          type: 'Python'),
      File(
          imageUrl: 'https://static.thenounproject.com/png/407408-200.png',
          name: 'Todo List',
          size: '150 KB',
          type: 'Text'),
      File(
          imageUrl:
              'https://cdn2.iconfinder.com/data/icons/music-filled-pixel-perfect/64/music-35-512.png',
          name: 'Silent Forest',
          size: '3 MB',
          type: 'Audio'),
      File(
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Dart-logo-icon.svg/2048px-Dart-logo-icon.svg.png',
          name: 'MainApp ',
          size: '402 KB',
          type: 'Dart'),
      File(
          imageUrl:
              'https://c8.alamy.com/comp/2PKEXA4/vinnitsa-ukraine-december-30-2022-adobe-photoshop-logo-icon-2PKEXA4.jpg',
          name: 'Mockup',
          size: '2 MB',
          type: 'Image')
    ]);
  }
}

class FileList extends StatelessWidget {
  const FileList({super.key, required this.files});

  final List<File> files;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: files.length,
        itemBuilder: (context, index) {
          final file = files[index];
          return ListTile(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailFile(file: file))),
            leading: SizedBox(
              width: 50,
              height: 50,
              child: Image.network(file.imageUrl),
            ),
            title: Text(
              file.name,
              style: TextStyle(
                  color: lighten(Colors.black, 30),
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text('${file.type} | ${file.size}',
                style: TextStyle(color: lighten(Colors.black, 30))),
            trailing: Icon(
              Icons.more_vert,
              color: lighten(Colors.black, 30),
            ),
          );
        },
      ),
    );
  }
}

class File {
  File({
    required this.imageUrl,
    required this.name,
    required this.size,
    this.type = 'Unknown',
  });

  final String imageUrl;
  final String name;
  final String size;
  final String type;
}
