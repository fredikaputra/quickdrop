import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quickdrop/const/colors.dart';
import 'package:quickdrop/const/texts.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.background),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.background,
          title: const Text(
            AppTexts.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            SizedBox(
                width: 55,
                child: SvgPicture.network(
                  'https://api.dicebear.com/8.x/lorelei/svg',
                  semanticsLabel: 'A shark?!',
                )),
          ],
        ),
        body: Center(
          child: SizedBox(
              width: 100,
              height: 100,
              child: SvgPicture.network(
                'https://api.dicebear.com/8.x/lorelei/svg',
                semanticsLabel: 'A shark?!',
              )),
        ),
      ),
    );
  }
}
