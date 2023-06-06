

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehya/pages/login.dart';
import 'package:vehya/services/auth.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  String loginStatus = '';


  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {

  final  h = MediaQuery.of(context).size.height;
  final  w = MediaQuery.of(context).size.width;
    return Scaffold(
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
                                  side: BorderSide(width: 1.0, color: Colors.black),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  shape: StadiumBorder()),
                              onPressed: () {},
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
                      "assets/images/register.png",
                      width: w,
                      height: h + 130,
                      fit: BoxFit.cover,
                    ),
                    Row(
                      children: [
                        Expanded(child: Container()),
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: h * .17),
                                Text(
                                  "   Name",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 40,
                                  width: w * .40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: TextField(
                                      controller: nameController,
                                      decoration: InputDecoration(
                                          contentPadding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "   Email",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 40,
                                  width: w * .40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: TextField(
                                      controller: emailController,
                                      decoration: InputDecoration(
                                          contentPadding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "   Password",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  height: 40,
                                  width: w * .40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Row(
                                      children:  [
                                        Expanded(
                                          child: TextField(
                                      controller: passController,
                                            decoration: InputDecoration(
                                                contentPadding:
                                                EdgeInsets.symmetric(horizontal: 16),
                                                border: InputBorder.none),
                                          ),
                                        ),
                                        Icon(Icons.visibility_off_outlined,color: Colors.black54,),
                                        SizedBox(width: 30,),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "   Confirm Password",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 40,
                                  width: w * .40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Row(
                                      children:  [
                                        Expanded(
                                          child: TextField(
                                      controller: confirmPassController,
                                            decoration: InputDecoration(
                                                contentPadding:
                                                EdgeInsets.symmetric(horizontal: 16),
                                                border: InputBorder.none),
                                          ),
                                        ),
                                        Icon(Icons.visibility_off_outlined,color: Colors.black54,),
                                        SizedBox(width: 30,),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                  width: w * .40,
                                  height: 45,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.black,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10), // <-- Radius
                                        ),),
                                      onPressed: () async {
                                Auth auth = Auth();
                                  if (passController.text.length != 6) {
                                if (passController.text == confirmPassController.text) {
                                    await auth.signUpUser(email: emailController.text,password: passController.text);
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));                                        } else {
                                  }
                                  }
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Login()));
                                      },
                                      child: Text(
                                        "Sign Up",
                                        style: GoogleFonts.poppins(
                                            fontSize: 18, color: Colors.white),
                                      )),
                                ),
                                SizedBox(height: 10,),
                                SizedBox(
                                  width: w * .40,
                                  height: 45,
                                  child: ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5), // <-- Radius
                                        ),),
                                      onPressed: () {},
                                      icon: Image.asset("assets/images/google.png",height:30,width: 30,),
                                      label: Text(
                                        "Login with Google",
                                        style: GoogleFonts.poppins(
                                            fontSize: 18, color: Colors.black),
                                      )),
                                ),
                                SizedBox(height: 60,),
                                SizedBox(
                                  width: w * .40,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Already Have Account? ",
                                        style: GoogleFonts.poppins(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => Login()));
                                        },
                                        child: Text(
                                          "Log In",
                                          style: GoogleFonts.poppins(
                                              decoration: TextDecoration.underline,
                                              fontSize: 18, color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 50,)
                              ],
                            )),
                      ],
                    )
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
          )),
    );
  }
}
