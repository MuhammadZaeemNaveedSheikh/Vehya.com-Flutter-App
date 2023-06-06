import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:translator/translator.dart';
import 'package:vehya/pages/about.dart';
import 'package:vehya/pages/content.dart';
import 'package:vehya/pages/login.dart';

import 'package:vehya/pages/register.dart';
import 'package:vehya/pages/terms_of_services.dart';

class Home extends StatefulWidget {
  Home({Key? key, required this.x}) : super(key: key);

  bool? x;
  @override
  State<Home> createState() => _HomeState();
}

const List<String> list = <String>['English', 'Spanish', 'French', 'Germany'];

String dropdownValue = list.first;

String ss1 = 'Home';
String ss2 = 'About';
String ss3 = 'Content';
String ss4 = 'Service providers';
String ss5 = 'Log in';
String ss6 = 'Sign up';
String ss7 = 'Hey We Are Vehya';
String ss8 = 'What is Vehya?';
String ss9 =
    'Vehya is a marketplace for electrification products such as electric vehicle chargers, solar, battery storage, and other resiliency products. We then combine our marketplace with Vehya-certified Service Providers who are ready to install and service your equipment quickly and safely';
String ss10 = 'Want to learn more about Vehya';
String ss11 = 'See how it works, who we work with, and how to get started here';
String ss12 = 'Want to get in the know about electrification?';
String ss13 =
    'See things Vehya is doing, solutions we offer, and related content.';
String ss14 = 'Are you an electrical, solar, or HVAC contractor?';
String ss15 =
    'Learn more about how to get started with Vehya and the things we do to show how valuable our service providers are to the electrification future';
String ss16 =
    'This website uses third-party cookies in order to serve you relevant ads on other websites. Learn more by visiting our Cookie Policy, or opt out of third-party ad cookies using the button below';

class _HomeState extends State<Home> {
  bool? cookies = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkCookies();
  }

  checkCookies() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setBool('cookie', false);
    cookies = prefs.getBool('cookie');
    print("check cookies $cookies");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    final translator = GoogleTranslator();

    return Scaffold(
      backgroundColor: const Color(0xFFE7EBF6),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
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
                            InkWell(
                                onTap: () {},
                                child: Text(
                                  ss1,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                            SizedBox(
                              width: w * 0.08,
                            ),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const About()));
                                },
                                child: Text(
                                  ss2,
                                  style: TextStyle(color: Colors.grey),
                                )),
                            SizedBox(
                              width: w * 0.08,
                            ),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const Content()));
                                },
                                child: Text(
                                  ss3,
                                  style: TextStyle(color: Colors.grey),
                                )),
                            SizedBox(
                              width: w * 0.08,
                            ),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const About()));
                                },
                                child: Text(
                                  ss4,
                                  style: TextStyle(color: Colors.grey),
                                )),
                          ],
                        ),
                        SizedBox(
                          width: w * 0.20,
                          child: Row(
                            children: [
                              DropdownButton<String>(
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style:
                                    const TextStyle(color: Colors.deepPurple),
                                underline: Container(
                                  height: 2,
                                  color: Colors.deepPurpleAccent,
                                ),
                                onChanged: (String? value) async {
                                  if (value == 'English') {
                                    ss1 = 'Home';
                                    ss2 = 'About';
                                    ss3 = 'Content';
                                    ss4 = 'Service providers';
                                    ss5 = 'Log in';
                                    ss6 = 'Sign up';
                                    ss7 = 'Hey We Are Vehya';
                                    ss8 = 'What is Vehya?';
                                    ss9 =
                                        'Vehya is a marketplace for electrification products such as electric vehicle chargers, solar, battery storage, and other resiliency products. We then combine our marketplace with Vehya-certified Service Providers who are ready to install and service your equipment quickly and safely';
                                    ss10 = 'Want to learn more about Vehya';
                                    ss11 =
                                        'See how it works, who we work with, and how to get started here';
                                    ss12 =
                                        'Want to get in the know about electrification?';
                                    ss13 =
                                        'See things Vehya is doing, solutions we offer, and related content.';
                                    ss14 =
                                        'Are you an electrical, solar, or HVAC contractor?';
                                    ss15 =
                                        'Learn more about how to get started with Vehya and the things we do to show how valuable our service providers are to the electrification future';
                                    ss16 =
                                        'This website uses third-party cookies in order to serve you relevant ads on other websites. Learn more by visiting our Cookie Policy, or opt out of third-party ad cookies using the button below';

                                    setState(() {
                                      dropdownValue = value!;
                                    });
                                  } else if (value == 'Spanish') {
                                    Translation s1 = await translator
                                        .translate('Home', to: 'es');
                                    Translation s2 = await translator
                                        .translate('About', to: 'es');
                                    Translation s3 = await translator
                                        .translate('Content', to: 'es');
                                    Translation s4 = await translator.translate(
                                        'Service providers',
                                        to: 'es');
                                    Translation s5 = await translator
                                        .translate('Log in', to: 'es');
                                    Translation s6 = await translator
                                        .translate('Sign up', to: 'es');
                                    Translation s7 = await translator.translate(
                                        'Hey We Are Vehya',
                                        to: 'es');
                                    Translation s9 = await translator.translate(
                                        'Vehya is a marketplace for electrification products such as electric vehicle chargers, solar, battery storage, and other resiliency products. We then combine our marketplace with Vehya-certified Service Providers who are ready to install and service your equipment quickly and safely',
                                        to: 'es');
                                    Translation s8 = await translator
                                        .translate('What is Vehya?', to: 'es');
                                    Translation s10 =
                                        await translator.translate(
                                            'Want to learn more about Vehya',
                                            to: 'es');
                                    Translation s11 = await translator.translate(
                                        'See how it works, who we work with, and how to get started here',
                                        to: 'es');
                                    Translation s12 = await translator.translate(
                                        'Want to get in the know about electrification?',
                                        to: 'es');
                                    Translation s13 = await translator.translate(
                                        'See things Vehya is doing, solutions we offer, and related content',
                                        to: 'es');
                                    Translation s14 = await translator.translate(
                                        ' Are you an electrical, solar, or HVAC contractor?',
                                        to: 'es');
                                    Translation s15 = await translator.translate(
                                        'Learn more about how to get started with Vehya and the things we do to show how valuable our service providers are to the electrification future',
                                        to: 'es');
                                    Translation s16 = await translator.translate(
                                        'This website uses third-party cookies in order to serve you relevant ads on other websites. Learn more by visiting our Cookie Policy, or opt out of third-party ad cookies using the button below',
                                        to: 'es');

                                    ss1 = s1.text;
                                    ss2 = s2.text;
                                    ss3 = s3.text;
                                    ss4 = s4.text;
                                    ss5 = s5.text;
                                    ss6 = s6.text;
                                    ss7 = s7.text;
                                    ss8 = s8.text;
                                    ss9 = s9.text;
                                    ss10 = s10.text;
                                    ss11 = s11.text;
                                    ss12 = s12.text;
                                    ss13 = s13.text;
                                    ss14 = s14.text;
                                    ss15 = s15.text;
                                    ss16 = s16.text;

                                    setState(() {
                                      dropdownValue = value!;
                                    });
                                  } else if (value == 'French') {
                                    Translation s1 = await translator
                                        .translate('Home', to: 'fr');
                                    Translation s2 = await translator
                                        .translate('About', to: 'fr');
                                    Translation s3 = await translator
                                        .translate('Content', to: 'fr');
                                    Translation s4 = await translator.translate(
                                        'Service providers',
                                        to: 'fr');
                                    Translation s5 = await translator
                                        .translate('Log in', to: 'fr');
                                    Translation s6 = await translator
                                        .translate('Sign up', to: 'fr');
                                    Translation s7 = await translator.translate(
                                        'Hey We Are Vehya',
                                        to: 'fr');
                                    Translation s9 = await translator.translate(
                                        'Vehya is a marketplace for electrification products such as electric vehicle chargers, solar, battery storage, and other resiliency products. We then combine our marketplace with Vehya-certified Service Providers who are ready to install and service your equipment quickly and safely',
                                        to: 'fr');
                                    Translation s8 = await translator
                                        .translate('What is Vehya?', to: 'fr');
                                    Translation s10 =
                                        await translator.translate(
                                            'Want to learn more about Vehya',
                                            to: 'fr');
                                    Translation s11 = await translator.translate(
                                        'See how it works, who we work with, and how to get started here',
                                        to: 'fr');
                                    Translation s12 = await translator.translate(
                                        'Want to get in the know about electrification?',
                                        to: 'fr');
                                    Translation s13 = await translator.translate(
                                        'See things Vehya is doing, solutions we offer, and related content',
                                        to: 'fr');
                                    Translation s14 = await translator.translate(
                                        ' Are you an electrical, solar, or HVAC contractor?',
                                        to: 'fr');
                                    Translation s15 = await translator.translate(
                                        'Learn more about how to get started with Vehya and the things we do to show how valuable our service providers are to the electrification future',
                                        to: 'fr');
                                    Translation s16 = await translator.translate(
                                        'This website uses third-party cookies in order to serve you relevant ads on other websites. Learn more by visiting our Cookie Policy, or opt out of third-party ad cookies using the button below',
                                        to: 'fr');

                                    ss1 = s1.text;
                                    ss2 = s2.text;
                                    ss3 = s3.text;
                                    ss4 = s4.text;
                                    ss5 = s5.text;
                                    ss6 = s6.text;
                                    ss7 = s7.text;
                                    ss8 = s8.text;
                                    ss9 = s9.text;
                                    ss10 = s10.text;
                                    ss11 = s11.text;
                                    ss12 = s12.text;
                                    ss13 = s13.text;
                                    ss14 = s14.text;
                                    ss15 = s15.text;
                                    ss16 = s16.text;

                                    setState(() {
                                      dropdownValue = value!;
                                    });
                                  } else if (value == 'Germany') {
                                    Translation s1 = await translator
                                        .translate('Home', to: 'de');
                                    Translation s2 = await translator
                                        .translate('About', to: 'de');
                                    Translation s3 = await translator
                                        .translate('Content', to: 'de');
                                    Translation s4 = await translator.translate(
                                        'Service providers',
                                        to: 'de');
                                    Translation s5 = await translator
                                        .translate('Log in', to: 'de');
                                    Translation s6 = await translator
                                        .translate('Sign up', to: 'de');
                                    Translation s7 = await translator.translate(
                                        'Hey We Are Vehya',
                                        to: 'de');
                                    Translation s9 = await translator.translate(
                                        'Vehya is a marketplace for electrification products such as electric vehicle chargers, solar, battery storage, and other resiliency products. We then combine our marketplace with Vehya-certified Service Providers who are ready to install and service your equipment quickly and safely',
                                        to: 'de');
                                    Translation s8 = await translator
                                        .translate('What is Vehya?', to: 'de');
                                    Translation s10 =
                                        await translator.translate(
                                            'Want to learn more about Vehya',
                                            to: 'de');
                                    Translation s11 = await translator.translate(
                                        'See how it works, who we work with, and how to get started here',
                                        to: 'de');
                                    Translation s12 = await translator.translate(
                                        'Want to get in the know about electrification?',
                                        to: 'de');
                                    Translation s13 = await translator.translate(
                                        'See things Vehya is doing, solutions we offer, and related content',
                                        to: 'de');
                                    Translation s14 = await translator.translate(
                                        ' Are you an electrical, solar, or HVAC contractor?',
                                        to: 'de');
                                    Translation s15 = await translator.translate(
                                        'Learn more about how to get started with Vehya and the things we do to show how valuable our service providers are to the electrification future',
                                        to: 'de');
                                    Translation s16 = await translator.translate(
                                        'This website uses third-party cookies in order to serve you relevant ads on other websites. Learn more by visiting our Cookie Policy, or opt out of third-party ad cookies using the button below',
                                        to: 'de');

                                    ss1 = s1.text;
                                    ss2 = s2.text;
                                    ss3 = s3.text;
                                    ss4 = s4.text;
                                    ss5 = s5.text;
                                    ss6 = s6.text;
                                    ss7 = s7.text;
                                    ss8 = s8.text;
                                    ss9 = s9.text;
                                    ss10 = s10.text;
                                    ss11 = s11.text;
                                    ss12 = s12.text;
                                    ss13 = s13.text;
                                    ss14 = s14.text;
                                    ss15 = s15.text;
                                    ss16 = s16.text;

                                    setState(() {
                                      dropdownValue = value!;
                                    });
                                  }
                                },
                                items: list.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                              SizedBox(
                                width: w * 0.01,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: w * 0.008, vertical: 5),
                                      shape: StadiumBorder()),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Login()));
                                  },
                                  child: Text(
                                    ss5,
                                    style: GoogleFonts.poppins(
                                        fontSize: w * 0.008,
                                        color: Colors.white),
                                  )),
                              SizedBox(
                                width: w * 0.001,
                              ),
                              OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      side: BorderSide(
                                          width: 1.0, color: Colors.black),
                                      shape: StadiumBorder()),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Register()));
                                  },
                                  child: Text(
                                    ss6,
                                    style: GoogleFonts.poppins(
                                        fontSize: w * 0.008,
                                        color: Colors.black),
                                  ))
                            ],
                          ),
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
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 30),
                    color: const Color(0xffE7EBF6),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('👋'),
                                Text(ss7),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              ss8,
                              style: TextStyle(fontSize: h * 0.055),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: 350,
                              child: Text(ss9),
                            )
                          ],
                        ),
                        Image.asset(
                          'assets/images/first_image.png',
                          height: h * 0.5,
                          width: w * 0.5,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: w,
                    height: 600,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage('assets/images/background.png')),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: w * 0.3,
                          margin: const EdgeInsets.all(40),
                          child: Column(
                            children: [
                              Image.asset('assets/images/laptop.png'),
                              SizedBox(
                                height: 30,
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                    minimumSize:
                                        MaterialStateProperty.all<Size>(
                                            Size(120, 40)),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.black),
                                  ),
                                  onPressed: () {},
                                  child: SizedBox(
                                    width: 140,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/arrwo.png',
                                          width: 10,
                                          height: 10,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        const Text(
                                          'About',
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          width: w * 0.45,
                          margin: const EdgeInsets.symmetric(vertical: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ss10,
                                style: TextStyle(
                                    fontSize: (w + h) * 0.025,
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                height: (w + h) * 0.005,
                              ),
                              SizedBox(
                                  width: (w + h) * 0.11,
                                  child: Text(
                                    ss11,
                                  )),
                              SizedBox(
                                height: (w + h) * 0.02,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/row_image.png',
                                    width: (w + h) * 0.19,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: const CircleAvatar(
                                      backgroundColor: Colors.black,
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: w,
                    height: 600,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/second_bg_line.png')),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: w * 0.3,
                          margin: const EdgeInsets.all(40),
                          child: Column(
                            children: [
                              Text(
                                ss12,
                                style: TextStyle(
                                    fontSize: (w + h) * 0.025,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                ss13,
                                style: TextStyle(fontSize: (w + h) * 0.007),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: w * 0.45,
                          margin: const EdgeInsets.only(left: 150, top: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Row(
                                  children: [
                                    Image.asset('assets/images/image1.png'),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset('assets/images/image2.png'),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset('assets/images/image3.png'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: w,
                    height: 600,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/second_bg_line.png')),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: w * 0.3,
                              margin: const EdgeInsets.all(40),
                              child: Column(
                                children: [
                                  Image.asset('assets/images/first_phone.png'),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                          'assets/images/google_play.png'),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(
                                          'assets/images/app_store.png'),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: w * 0.45,
                              margin: const EdgeInsets.only(left: 150, top: 40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ss14,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: (w + h) * 0.02),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    ss15,
                                    style: TextStyle(fontSize: (w + h) * 0.007),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        //   cookies == false
                        //       ? Positioned(
                        //           top: 0,
                        //           right: 20,
                        //           child: Container(
                        //             padding: EdgeInsets.all(10),
                        //             decoration: BoxDecoration(
                        //                 color: Colors.grey,
                        //                 borderRadius: BorderRadius.circular(20)),
                        //             height: 240,
                        //             width: 400,
                        //             child: Column(
                        //               mainAxisAlignment: MainAxisAlignment.start,
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.center,
                        //               children: [
                        //                 Image.asset(
                        //                   "assets/images/cookie_icon.png",
                        //                 ),
                        //                 SizedBox(
                        //                   height: 10,
                        //                 ),
                        //                 Text(ss16,
                        //                     textAlign: TextAlign.center,
                        //                     style: GoogleFonts.poppins(
                        //                         fontSize: 12,
                        //                         color: Colors.black)),
                        //                 SizedBox(
                        //                   height: 20,
                        //                 ),
                        //                 Row(
                        //                   mainAxisAlignment:
                        //                       MainAxisAlignment.center,
                        //                   children: [
                        //                     OutlinedButton(
                        //                         style: OutlinedButton.styleFrom(
                        //                             side: BorderSide(
                        //                                 width: 1.0,
                        //                                 color: Colors.black),
                        //                             padding: EdgeInsets.symmetric(
                        //                                 horizontal: 20,
                        //                                 vertical: 16),
                        //                             shape: StadiumBorder()),
                        //                         onPressed: () async {
                        //                           final SharedPreferences prefs =
                        //                               await SharedPreferences
                        //                                   .getInstance();
                        //                           await prefs.setBool(
                        //                               'cookie', true);

                        //                           setState(() {});
                        //                         },
                        //                         child: Text(
                        //                           "Decline",
                        //                           style: GoogleFonts.poppins(
                        //                               fontSize: 16,
                        //                               color: Colors.black),
                        //                         )),
                        //                     SizedBox(
                        //                       width: 20,
                        //                     ),
                        //                     ElevatedButton(
                        //                         style: ElevatedButton.styleFrom(
                        //                             backgroundColor: Colors.black,
                        //                             padding: EdgeInsets.symmetric(
                        //                                 horizontal: 20,
                        //                                 vertical: 16),
                        //                             shape: StadiumBorder()),
                        //                         onPressed: () async {

                        //                         },
                        //                         child: Text(
                        //                           "Accept",
                        //                           style: GoogleFonts.poppins(
                        //                               fontSize: 18,
                        //                               color: Colors.white),
                        //                         )),
                        //                     SizedBox(
                        //                       width: 20,
                        //                     ),
                        //                   ],
                        //                 )
                        //               ],
                        //             ),
                        //           ))
                        //       : SizedBox(),
                      ],
                    ),
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
              cookies == true
                  ? Container()
                  : Positioned(
                      top: 100,
                      right: 20,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey,
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
                            Text(ss16,
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
                                    onPressed: () async {
                                      final SharedPreferences prefs =
                                          await SharedPreferences.getInstance();
                                      await prefs.setBool('cookie', true);
                                      print('object');
                                      await checkCookies();
                                      setState(() {});
                                    },
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
                                    onPressed: () async {
                                      final SharedPreferences prefs =
                                          await SharedPreferences.getInstance();
                                      await prefs.setBool('cookie', true);
                                      await checkCookies();
                                      print('object');

                                      setState(() {});
                                    },
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
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
