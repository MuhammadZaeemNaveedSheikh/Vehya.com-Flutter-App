
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehya/pages/login.dart';
import 'package:vehya/pages/register.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    final  h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFE7EBF6),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: w * .10),
                color: Colors.white,
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/logo.png",
                        height: 120, width: 120),
                    Row(
                      children: [
                        Image.asset("assets/images/language.png",
                            height: 100, width: 100),
                        SizedBox(
                          width: 30,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                shape: StadiumBorder()),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            child: Text(
                              "LOGIN",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, color: Colors.white),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side:
                                BorderSide(width: 1.0, color: Colors.black),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                shape: StadiumBorder()),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register()));
                            },
                            child: Text(
                              "SIGN UP",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, color: Colors.black),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 10,
                width: w,
                color: Colors.black,
              ),
              Image.asset(
                "assets/images/color_divider.png",
                width: w,
              ),
              Stack(
                children: [
                  Image.asset(
                    "assets/images/first_image.png",
                    width: w,
                    height: h - 125,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      bottom: 20,
                      right: 20,
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        height: 240,
                        width: 400,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/cookie_icon.png",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "This website uses third-party cookies in order to serve you relevant ads on other websites. Learn more by visiting our Cookie Policy, or opt out of third-party ad cookies using the button below.",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: Colors.black)),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                        side: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 16),
                                        shape: StadiumBorder()),
                                    onPressed: () {},
                                    child: Text(
                                      "Decline",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16, color: Colors.black),
                                    )),
                                SizedBox(
                                  width: 20,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.black,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 16),
                                        shape: StadiumBorder()),
                                    onPressed: () {},
                                    child: Text(
                                      "Accept",
                                      style: GoogleFonts.poppins(
                                          fontSize: 18, color: Colors.white),
                                    )),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              ),
              Image.asset(
                "assets/images/color_divider.png",
                width: w,
              ),
              Image.asset(
                "assets/images/footer.png",
                width: w,
              )
            ],
          ),
        ),
      ),
    );
  }
}
