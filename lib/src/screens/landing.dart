import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms_uidesign/src/animations/FadedAnimations.dart';
import 'package:lms_uidesign/src/screens/allcourses.dart';
import 'package:lms_uidesign/src/styles/color.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              AppColors.darkgray,
              AppColors.darkgray,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FadeAnimation(
              1,
              Container(
                height: 450,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/humanworking.png'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          FadeAnimation(
                            1.3,
                            Text(
                              'Learn on Your Schedule',
                              style: GoogleFonts.poppins(
                                fontSize: 40,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          FadeAnimation(
                            1.4,
                            Text(
                              'Choose from 100,00 online video courses with new additions every month',
                              style: GoogleFonts.poppins(
                                color: AppColors.darkgray,
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: <Widget>[
                              Container(
                                height: 10,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: AppColors.black),
                              ),
                              SizedBox(width: 10),
                              Container(
                                height: 10,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: AppColors.lightgray),
                              ),
                              SizedBox(width: 10),
                              Container(
                                height: 10,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: AppColors.lightgray),
                              ),
                              SizedBox(width: 90),
                              Material(
                                color: AppColors.lightblue,
                                borderRadius: BorderRadius.circular(21),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return AllCourses();
                                    }));
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(21),
                                      color: AppColors.black,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            'Get Started',
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                          SizedBox(width: 10),
                                          FaIcon(
                                            FontAwesomeIcons.angleRight,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
