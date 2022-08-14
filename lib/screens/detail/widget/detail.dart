import 'package:course_app/modals/course.dart';
import 'package:course_app/screens/detail/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Course course;

  DetailPage(this.course);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(course)
          ],
        ),
      )));
    
  }
}
