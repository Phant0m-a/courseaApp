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
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              height: 300,
              width: double.infinity,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    course.imageUrl,
                    fit: BoxFit.cover,
                  )),
            ),
            Container(
              height: 20,
            ),
          ]),
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
              top: MediaQuery.of(context).padding.top,
              left: 25,
              child: Container(
                height: 50,
                width: 50,
                padding: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.3),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  iconSize: 20,
                  onPressed: () => Navigator.pop(context),
                ),
              )),
          Positioned(
              top: MediaQuery.of(context).padding.top,
              right: 25,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.3),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.bookmark,
                    color: Colors.white,
                  ),
                  iconSize: 20,
                  onPressed: () {
                    print('bookmarked!');
                  },
                ),
              ))
        ],
      ),
    );
  }
}
