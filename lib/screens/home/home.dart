import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackground,
        elevation: 0,
        centerTitle: true,
        title:const Text('Coursiya', style: TextStyle(
          fontSize: 16,
          color: kFontLight
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Home Page',
            )
          ],
        ),
      ),
    );
  }
}
