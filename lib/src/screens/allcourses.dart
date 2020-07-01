import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms_uidesign/src/animations/FadedAnimations.dart';
import 'package:lms_uidesign/src/screens/course.dart';
import 'package:lms_uidesign/src/styles/color.dart';

class AllCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  icon: Icon(
                    FontAwesomeIcons.search,
                    color: AppColors.black,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: FadeAnimation(
                1,
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.poppins(
                      fontSize: 40,
                      fontWeight: FontWeight.normal,
                      color: AppColors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'What do you want to'),
                      TextSpan(
                          text: ' Learn Today?',
                          style: new TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            FadeAnimation(
              1.3,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'POPULAR',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
            ),
            FadeAnimation(
              1.3,
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                      decoration: BoxDecoration(
                        color: AppColors.offwhite,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'E - COMMERCE',
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.lightblue,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'How to built an \nonline shop',
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 10.0, bottom: 10.0, top: 10.0),
                            child: Image.asset(
                              'assets/images/undraw_wallet_aym5.png',
                              height: 80.0,
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Course();
                          }));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 30),
                          decoration: BoxDecoration(
                            color: AppColors.offwhite,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'MARKETING',
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.peach,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Basics of \nsocial media',
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15,
                                    right: 10.0,
                                    bottom: 10.0,
                                    top: 10.0),
                                child: Image.asset(
                                  'assets/images/networkman_illustration.png',
                                  height: 100.0,
                                  alignment: Alignment.centerRight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                      decoration: BoxDecoration(
                        color: AppColors.offwhite,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'ART',
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Introduction to \nPhotography',
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 10.0, bottom: 10.0, top: 10.0),
                            child: Image.asset(
                              'assets/images/photographer_illustration.png',
                              height: 100.0,
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
