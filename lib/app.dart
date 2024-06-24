import 'package:flutter/material.dart';
import 'package:quickdrop/components/account.dart';
import 'package:quickdrop/components/detail_summary.dart';
import 'package:quickdrop/components/main_button.dart';
import 'package:quickdrop/components/files.dart';
import 'package:quickdrop/components/search_button.dart';
import 'package:quickdrop/components/subtitle.dart';
import 'package:quickdrop/const/colors.dart';
import 'package:quickdrop/const/texts.dart';
import 'package:quickdrop/helper.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(AppColors.quaternary),
        // textTheme: TextTheme(
        //   bodyMedium: TextStyle(
        //     color: Colors.yellow,
        //   ),
        //   bodyLarge: TextStyle(
        //     color: Colors.red,
        //   ),
        //   bodySmall: TextStyle(
        //     color: Colors.green,
        //   ),
        // )
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(AppColors.quaternary),
          title: Text(
            AppTexts.title,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: lighten(Colors.black, 30)),
          ),
          actions: [
            Builder(builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Account()),
                  );
                },
                child: SizedBox(
                  width: 90,
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFK3aGpbIrBzfqB1Fxq8BNMfZJu70SwwhzwQ&s',
                  ),
                ),
              );
            }),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Column(
            children: [
              SearchButton(),
              SizedBox(height: 20),
              MainButton(),
              SizedBox(height: 20),
              DetailSummary(),
              SizedBox(height: 20),
              Subtitle('Shared File'),
              SizedBox(height: 10),
              Files(),
            ],
          ),
        ),
      ),
    );
  }
}
