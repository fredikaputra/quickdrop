import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quickdrop/const/colors.dart';
import 'package:quickdrop/helper.dart';

class Account extends StatelessWidget {
  const Account({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => Scaffold(
                    body: SafeArea(
                      child: Container(
                        color: Colors.white,
                        child: Stack(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    color: const Color(AppColors.secondary),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    color: const Color(AppColors.quaternary),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              child: Transform.translate(
                                offset: const Offset(0, 150),
                                child: const Center(
                                  child: Text(
                                    'QuickDrop',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontFamily: 'PoppinsMuseoModerno',
                                        fontVariations: [
                                          FontVariation('wght', 700),
                                        ]),
                                  ),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: const Offset(0, 100),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(25),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(30),
                                      child: Form(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            const Center(
                                              child: Text(
                                                'Dive into Effortless File Sharing',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            Center(
                                              child: Text(
                                                'Your Central Hub for Seamless Collaboration',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey[700],
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            const SizedBox(height: 30),
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    WidgetStateProperty.all<
                                                            Color>(
                                                        const Color(AppColors
                                                            .secondary)),
                                                foregroundColor:
                                                    WidgetStateProperty.all(
                                                        Colors.white),
                                                minimumSize: WidgetStateProperty
                                                    .all<Size>(const Size(
                                                        double.infinity, 40)),
                                                shape: WidgetStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                ),
                                              ),
                                              child: const Text('Sign In'),
                                              onPressed: () {},
                                            ),
                                            const SizedBox(height: 10),
                                            FilledButton(
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    WidgetStateProperty.all<
                                                        Color>(Colors.white),
                                                foregroundColor:
                                                    WidgetStateProperty.all(
                                                        const Color(AppColors
                                                            .secondary)),
                                                minimumSize: WidgetStateProperty
                                                    .all<Size>(const Size(
                                                        double.infinity, 40)),
                                                shape: WidgetStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    side: const BorderSide(
                                                      color: Color(
                                                          AppColors.secondary),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              child: const Text('Sign Up'),
                                              onPressed: () {},
                                            ),
                                            const SizedBox(height: 30),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Expanded(
                                                  child: Divider(
                                                    color: Colors.grey[400],
                                                    thickness: 1,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10),
                                                  child: Text(
                                                    'Or login with',
                                                    style: TextStyle(
                                                        color:
                                                            Colors.grey[400]),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Divider(
                                                    color: Colors.grey[400],
                                                    thickness: 1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 30),
                                            FilledButton(
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    WidgetStateProperty.all<
                                                        Color>(Colors.white),
                                                foregroundColor:
                                                    WidgetStateProperty.all(
                                                        const Color(AppColors
                                                            .secondary)),
                                                minimumSize: WidgetStateProperty
                                                    .all<Size>(const Size(
                                                        double.infinity, 40)),
                                                shape: WidgetStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    side: const BorderSide(
                                                      color: Color(
                                                          AppColors.secondary),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  SvgPicture.asset(
                                                      'assets/images/Google__G__logo.svg',
                                                      height: 20.0),
                                                  const SizedBox(width: 10.0),
                                                  const Text(
                                                      'Login with Google'),
                                                ],
                                              ),
                                              onPressed: () {},
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                (Route<dynamic> route) => false,
              );
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            Stack(
              children: <Widget>[
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFK3aGpbIrBzfqB1Fxq8BNMfZJu70SwwhzwQ&s',
                  width: 150,
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              initialValue: 'default@email.com',
              readOnly: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        const Color(AppColors.secondary)),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                    overlayColor: WidgetStateProperty.all(
                        darken(const Color(AppColors.secondary))),
                  ),
                  onPressed: () {},
                  child: const Text('Delete'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        const Color(AppColors.secondary)),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                    overlayColor: WidgetStateProperty.all(
                        darken(const Color(AppColors.secondary))),
                  ),
                  onPressed: () {},
                  child: const Text('Save'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
