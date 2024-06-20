import 'package:flutter/material.dart';
import 'package:quickdrop/components/files.dart';
import 'package:quickdrop/components/subtitle.dart';
import 'package:quickdrop/const/colors.dart';
import 'package:quickdrop/helper.dart';

class DetailFile extends StatelessWidget {
  const DetailFile({
    super.key,
    required this.file,
  });

  final File file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(AppColors.quaternary),
        title: const Text('Detail'),
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://natureconservancy-h.assetsadobe.com/is/image/content/dam/tnc/nature/en/photos/w/o/WOPA160517_D056-resized.jpg?crop=864%2C0%2C1728%2C2304&wid=600&hei=800&scl=2.88',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      ButtonAction(
                        icon: Icons.edit,
                      ),
                      SizedBox(width: 10),
                      ButtonAction(
                        icon: Icons.delete,
                      ),
                      SizedBox(width: 10),
                      ButtonAction(
                        icon: Icons.remove_red_eye,
                      ),
                      SizedBox(width: 10),
                      ButtonAction(
                        icon: Icons.share,
                      ),
                      SizedBox(width: 10),
                      ButtonAction(
                        icon: Icons.download_sharp,
                      ),
                    ],
                  )
                ],
              )),
          const SizedBox(height: 10),
          Expanded(
            child: Container(
              constraints: const BoxConstraints.expand(width: double.infinity),
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Text(
                    file.name,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(AppColors.primary)),
                  ),
                  Text(
                    'Image',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: lighten(Colors.black, 50)),
                  ),
                  const SizedBox(height: 30),
                  Expanded(
                      child: ListView(
                    children: const [
                      Detail('Format', 'PNG'),
                      SizedBox(height: 10),
                      Detail('Size', '20MB'),
                      SizedBox(height: 10),
                      Detail('Resolution', '1920x1080'),
                      SizedBox(height: 10),
                      Detail('Created', '2021-09-01'),
                      SizedBox(height: 10),
                      Detail('Modified', '2021-09-01'),
                      SizedBox(height: 10),
                      Detail('Expires', '2021-09-01'),
                      SizedBox(height: 10),
                      Detail('Owner', 'John Doe'),
                      SizedBox(height: 10),
                      Detail('Shared with', '5 people'),
                      SizedBox(height: 10),
                      Detail('Downloaded', '10 times'),
                      SizedBox(height: 10),
                      Detail('Views', '20 times'),
                    ],
                  )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Detail extends StatelessWidget {
  const Detail(
    this.label,
    this.value, {
    super.key,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class ButtonAction extends StatelessWidget {
  const ButtonAction({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: lighten(Colors.black, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Icon(
        icon,
        size: 22,
      ),
    ));
  }
}
