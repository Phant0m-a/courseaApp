import 'package:course_app/screens/home/widget/category_title.dart';
import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActiveCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Currently active', 'view all'),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: kFontLight.withOpacity(0.1),
                border:
                    Border.all(color: kFontLight.withOpacity(0.3), width: 1),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/course02.png',
                        width: 68,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          'Turing Test',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: kFont),
                        ),
                        Text(
                          '3 lessons left',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kFontLight,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              
              
              CircularPercentIndicator(
              radius: 69.0,
              lineWidth: 5.0,
              percent: 0.61,
              progressColor: kAccent,
              center: Text('61%',style: TextStyle(fontWeight: FontWeight.bold),),
              )
              ],
            ),
          
          ),
        ],
      ),
    );
  }
}
