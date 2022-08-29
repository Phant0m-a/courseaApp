import 'package:course_app/constants/colors.dart';
import 'package:course_app/modals/module.dart';
import 'package:course_app/screens/detail/widget/course_module.dart';
import 'package:flutter/material.dart';

class CourseProgress extends StatelessWidget {
  final moduleList = Module.generateModules();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'The progress',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, color: kFont),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icons/notification.PNG',
                  width: 25,
                ),
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  'assets/icons/more.PNG',
                  width: 25,
                ),
              ],
            )
          ]),
          SizedBox(height: 20,),
          ...moduleList.map((e) => CourseModule(e)).toList()
        ],
      ),
    );
  }
}
