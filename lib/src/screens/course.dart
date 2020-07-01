import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms_uidesign/src/animations/FadedAnimations.dart';
import 'package:lms_uidesign/src/screens/allcourses.dart';
import 'package:lms_uidesign/src/styles/color.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Course extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Material(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AllCourses();
                      }));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 30, left: 30),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: AppColors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 10),
                        child: FaIcon(
                          FontAwesomeIcons.angleLeft,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 150),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 30),
                  child: Text(
                    'MARKETING',
                    textAlign: TextAlign.right,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow[700],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 60),
              child: FadeAnimation(
                1,
                Text(
                  'Basics of \nsocial media',
                  style: GoogleFonts.poppins(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            FadeAnimation(
              1.2,
              Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.lightblue,
                    ),
                  ),
                  Image(
                    image:
                        AssetImage('assets/images/networkman_illustration.png'),
                    height: 250,
                    alignment: Alignment.topLeft,
                  ),
                  Container(
                    height: 200,
                    width: 120,
                    color: Colors.transparent,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              '12k',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              FontAwesomeIcons.userCheck,
                              color: Colors.yellow[700],
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              '4.7',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              '72 hr',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              FontAwesomeIcons.clock,
                              color: Colors.yellow[700],
                            )
                          ],
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            FadeAnimation(
              1.3,
              Container(
                margin: EdgeInsets.only(left: 200),
                height: 70,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: AppColors.black,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Play',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(width: 10),
                      FaIcon(
                        FontAwesomeIcons.play,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            FadeAnimation(
              1.3,
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Course Content',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            FadeAnimation(
              1.3,
              Row(
                children: <Widget>[
                  SizedBox(width: 30),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: AppColors.black,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            '1',
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: 300,
                    child: Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Welcome'),
                            SizedBox(width: 150),
                            Text(
                              '3 min',
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: <Widget>[
                            LinearPercentIndicator(
                              width: 250.0,
                              lineHeight: 8.0,
                              percent: 1.0,
                              progressColor: Colors.yellow[700],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            FadeAnimation(
              1.3,
              Row(
                children: <Widget>[
                  SizedBox(width: 30),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: AppColors.black,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            '2',
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: 300,
                    child: Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('How to send SMS'),
                            SizedBox(width: 100),
                            Text(
                              '5 min',
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: <Widget>[
                            LinearPercentIndicator(
                              width: 250.0,
                              lineHeight: 8.0,
                              percent: 1.0,
                              progressColor: Colors.yellow[700],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            FadeAnimation(
              1.3,
              Row(
                children: <Widget>[
                  SizedBox(width: 30),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: AppColors.black,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            '2',
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: 300,
                    child: Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('SM Marketing'),
                            SizedBox(width: 120),
                            Text(
                              '4 min',
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: <Widget>[
                            LinearPercentIndicator(
                              width: 250.0,
                              lineHeight: 8.0,
                              percent: 0.9,
                              progressColor: Colors.yellow[700],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
