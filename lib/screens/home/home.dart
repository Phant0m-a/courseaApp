import 'package:course_app/constants/colors.dart';
import 'package:course_app/modals/course.dart';
import 'package:course_app/screens/home/active_course.dart';
import 'package:course_app/screens/home/course_item.dart';
import 'package:course_app/screens/home/feature_course.dart';
import 'package:course_app/screens/home/widget/category_title.dart';
import 'package:course_app/screens/home/widget/search_input.dart';
import 'package:flutter/material.dart';
import './widget/emoji_text.dart';

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
      appBar: _BuildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            EmojiText(),
            SearchInput(),
            FeatureCourse(),
            ActiveCourse()
          ],
        ),
      ),
      bottomNavigationBar: _BuildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _BuildBottomNavigationBar() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kBackground,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              label: 'home',
              icon: Container(
                child: Text(
                  'Home',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: kAccent, width: 2))),
              )),
          BottomNavigationBarItem(
              label: 'profile-home',
              icon: Image.asset('assets/icons/profile-home.png', width: 20)),
          BottomNavigationBarItem(
              label: 'news',
              icon: Image.asset('assets/icons/news.png', width: 20)),
          BottomNavigationBarItem(
              label: 'study',
              icon: Image.asset('assets/icons/profile-study.png', width: 20)),
        ]);
  }

  AppBar _BuildAppBar() {
    return AppBar(
      actions: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, right: 20),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border:
                    Border.all(color: kFontLight.withOpacity(0.3), width: 2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                'assets/icons/notification.png',
                width: 30,
              ),
            ),
            Positioned(
                top: 15,
                right: 30,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration:
                      BoxDecoration(color: kAccent, shape: BoxShape.circle),
                ))
          ],
        ),
      ],
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'Coursiya',
        style: TextStyle(fontSize: 16, color: kFontLight),
      ),
    );
  }
}
