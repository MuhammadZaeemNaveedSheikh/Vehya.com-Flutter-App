

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehya/pages/forget_password.dart';
import 'package:vehya/pages/home.dart';
import 'package:vehya/pages/register.dart';
import 'package:vehya/services/auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final  h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
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
                          height: h * 0.1, width: w * 0.1),
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
                              onPressed: () {},
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
                      "assets/images/login.png",
                      width: w,
                      height: h,
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
                                  "   User Name",
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
                                      controller: usernameController,
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
                                  "  Password",
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
                                      controller: passwordController,
                                            decoration: const InputDecoration(
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
                                  width: w*.40,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => ForgetPassword()));
                                        },
                                        child: Text(
                                          "Forget Password",textAlign: TextAlign.right,
                                          style: GoogleFonts.poppins(
                                              fontSize: 20,
                                              color: Colors.black,
                                              decoration: TextDecoration.underline),
                                        ),
                                      ),
                                      SizedBox(width: 30,)
                                    ],
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
                                        print(usernameController.text);
                                        print(passwordController.text);
                                        Auth auth = Auth();
                                        if(usernameController.text.isNotEmpty && passwordController.text.isNotEmpty) {
                                          await auth.logInUser(email: usernameController.text, password: passwordController.text);
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => Home(x: true,),));                                        } else {
                                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed'),));
                                        }

                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => PrivacyPolicy()));
                                      },
                                      child: Text(
                                        "Log In",
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
                                        "Don't Have Account? ",
                                        style: GoogleFonts.poppins(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => Register()));
                                        },
                                        child: Text(
                                          "Sign Up",
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
