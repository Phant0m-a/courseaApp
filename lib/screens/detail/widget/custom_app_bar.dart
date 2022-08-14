import 'package:course_app/constants/colors.dart';
import 'package:course_app/modals/course.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Course course;
  CustomAppBar(this.course);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              height: 300,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    course.imageUrl,
                    fit: BoxFit.fitHeight,
                  )),
            ),
            Positioned(
              bottom: 0,
              right: 40,
              child: Container(
                height: 50,
                width: 110,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: kAccent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                  onPressed: () {},
                  child: Text('start class'),
                ),
              ),
            ),
            Positioned(
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(color: Colors.black.withOpacity(.3)),
              ),
              top: MediaQuery.of(context).padding.top,
              left: 25,
            )
          ]),
          // Container(
          //   height: 20,
          // ),
        ],
      ),
    );
  }
}
