import 'package:flutter/material.dart';
import 'package:quickdrop/const/colors.dart';
import 'package:quickdrop/const/texts.dart';
import 'package:quickdrop/helper.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(scaffoldBackgroundColor: const Color(AppColors.background)),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(AppColors.background),
          title: Text(
            AppTexts.title,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: lighten(Colors.black, 30)),
          ),
          actions: [
            SizedBox(
                width: 90,
                child: Image.network(
                  'https://avatar.iran.liara.run/public/8',
                )),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    foregroundColor: WidgetStateProperty.all(
                        const Color(AppColors.textSoftDark)),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    overlayColor: WidgetStateProperty.all(
                        const Color(AppColors.softDark)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.search,
                          size: 25,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Search...',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: FilledButton(
                    onPressed: () => {},
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(const Color(AppColors.blue)),
                      foregroundColor: WidgetStateProperty.all(Colors.white),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      overlayColor: WidgetStateProperty.all(
                          darken(const Color(AppColors.blue))),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Column(
                        children: [
                          Icon(
                            Icons.cloud_upload,
                            size: 50,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Upload',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: FilledButton(
                    onPressed: () => {},
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(const Color(0xFFB67352)),
                      foregroundColor: WidgetStateProperty.all(Colors.white),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      overlayColor: WidgetStateProperty.all(
                          darken(const Color(AppColors.blue))),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Column(
                        children: [
                          Icon(
                            Icons.cloud_download,
                            size: 50,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Download',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: TotalData(
                              icon: Icons.video_collection_rounded,
                              label: 'Video',
                              total: 10)),
                      SizedBox(width: 10),
                      Expanded(
                          child: TotalData(
                              icon: Icons.audiotrack_rounded,
                              label: 'Audio',
                              total: 20))
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child: TotalData(
                              icon: Icons.text_snippet_rounded,
                              label: 'Text File',
                              total: 30)),
                      SizedBox(width: 10),
                      Expanded(
                          child: TotalData(
                              icon: Icons.insert_drive_file_rounded,
                              label: 'Other',
                              total: 40))
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Shared File',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: lighten(Colors.black, 40)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FileList(files: [
                File(
                    imageUrl:
                        'https://cdn-icons-png.flaticon.com/512/4404/4404094.png',
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
                    imageUrl:
                        'https://static.thenounproject.com/png/407408-200.png',
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
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

class TotalData extends StatelessWidget {
  final IconData icon;
  final String label;
  final int total;

  const TotalData({
    super.key,
    required this.icon,
    required this.label,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: darken(const Color(AppColors.background)),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
      child: Row(
        children: [
          Icon(
            icon,
            color: lighten(Colors.black, 40),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: lighten(Colors.black, 40)),
              ),
              Text('$total files',
                  style: TextStyle(color: lighten(Colors.black, 40))),
            ],
          ),
        ],
      ),
    );
  }
}

class FileList extends StatelessWidget {
  final List<File> files;

  const FileList({super.key, required this.files});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: files.length,
        itemBuilder: (context, index) {
          final file = files[index];
          return ListTile(
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
  final String imageUrl;
  final String name;
  final String size;
  final String type;

  File({
    required this.imageUrl,
    required this.name,
    required this.size,
    this.type = 'Unknown',
  });
}
