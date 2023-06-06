import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:translator/translator.dart';
import 'package:vehya/pages/about.dart';
import 'package:vehya/pages/home.dart';
import 'package:vehya/pages/login.dart';
import 'package:vehya/pages/register.dart';
import 'package:vehya/pages/service_providers.dart';

const List<String> list = <String>['English', 'Spanish', 'French', 'Germany'];

String dropdownValue = list.first;

String sc1 = 'Home';
String sc2 = 'About';
String sc3 = 'Content';
String sc4 = 'Service providers';
String sc5 = 'Log in';
String sc6 = 'Sign up';
String sc7 = 'Blog';
String sc8 = 'Blog';
String sc9 = ' White Paper ';
String sc10 = ' Updates';
String sb11 =
    'Unleashing the Power: Battery Energy Chargers Transforming the Energy Landscape';
String sb12 =
    ' The article captures the essence of battery energy chargers, their significance in a sustainable energy future. Excited about innovations and their transformative impact. Unleashing the power of clean energy, paving the way for a greener world!';
String sb13 = ''' 
In recent years, battery energy chargers have emerged as a key player in the quest for clean and efficient energy solutions. These advanced devices are revolutionizing the way we store and utilize electricity, offering numerous benefits for both residential and commercial applications. In this article, we delve into the world of battery energy chargers, exploring their working principles, advantages, and their significant role in driving the transition towards a sustainable energy future.                     
                              ''';
String sb14 =
    'The Rise of Battery Energy Chargers: We examine the growing demand for battery energy chargers, fueled by the rapid growth of renewable energy sources and the increasing need for energy storage. From residential households seeking energy independence to businesses aiming to optimize their power usage, battery energy chargers offer a versatile and scalable solution';
String sb15 = 'manager';
String sb16 = 'Job details';
String sb17 = '(photos, documents, etc.) ';
String sb18 = 'Payout ';
String sb19 = 'Email Address';
String sb20 = 'Your Email';
String sb21 = 'Phone Number ';
String sb22 = 'Telephone ';
String sb23 = 'Name';
String sb24 = 'Name';
String sb25 = 'Contact';
String sb26 = 'Direct connect';

class Content extends StatefulWidget {
  const Content({Key? key}) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  final titleController = TextEditingController();
  final picturePathController = TextEditingController();
  final articleHeadingController = TextEditingController();
  final articleDetailController = TextEditingController();
  int selectedIndex = 0;

  List<String> namesList = <String>['Abc', 'Xyz', 'Qwe', 'Jkl'];

  String selectedName = 'Abc';

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late User _currentUser;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  List<Map<String, dynamic>> articlesList = [];

  Future<void> createArticle(
      String title, String heading, String imagePath, String details) async {
    try {
      final articleRef = _firestore.collection('articles');
      await articleRef.add({
        'title': title,
        'heading': heading,
        'imgPath': imagePath,
        'details': details,
        'username': _currentUser.displayName ?? '',
        'userImage': _currentUser.photoURL,
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Article created successfully!')),
      );
    } catch (e) {
      print('Error creating article: $e');
    }
  }

  updateIndex(int num) {
    selectedIndex = num;
    setState(() {});
  }

  // Future<void> createUser(
  //     String title, String heading, String imagePath, String details) async {
  //   try {
  //     final articleRef = _firestore.collection('articles');
  //     await articleRef.add({
  //       'title': title,
  //       'heading': heading,
  //       'imgPath': imagePath,
  //       'details': details,
  //       'username': _currentUser.displayName ?? '',
  //       'userImage': _currentUser.photoURL,
  //     });
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text('Article created successfully!')),
  //     );
  //   } catch (e) {
  //     print('Error creating article: $e');
  //   }
  // }

  void updateSelectedName(newValue) {
    setState(() {
      selectedName = newValue;
    });
  }

  @override
  void initState() {
    super.initState();
    _getCurrentUser();
    getArticles();
  }

  getArticles() async {
    print('get articles');
    final articleRef = _firestore.collection('articles');

    final result = await articleRef.get();
    articlesList = [];
    result.docs.forEach((element) {
      var data = element.data();
      articlesList.add(data);
      setState(() {});
    });

//get articles from firebase
//assign to list articles
    // setState(() {});
  }

  void _getCurrentUser() async {
    final user = _auth.currentUser;
    if (user != null) {
      setState(() {
        _currentUser = user;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final translator = GoogleTranslator();
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
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Home(x: false)));
                            },
                            child: Text(
                              sc1,
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
                              sc2,
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
                              sc3,
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
                                      builder: (_) =>
                                          const ServiceProviders()));
                            },
                            child: Text(
                              sc4,
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
                            style: const TextStyle(color: Colors.deepPurple),
                            underline: Container(
                              height: 2,
                              color: Colors.deepPurpleAccent,
                            ),
                            onChanged: (String? value) async {
                              if (value == 'English') {
                                sc1 = 'Home';
                                sc2 = 'About';
                                sc3 = 'Content';
                                sc4 = 'Service providers';
                                sc5 = 'Log in';
                                sc6 = 'Sign up';
                                sc7 = 'Blog';
                                sc8 = 'Blog';
                                sc9 = ' White Paper ';
                                sc10 = ' Updates';

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
                                Translation s4 = await translator
                                    .translate('Service providers', to: 'es');
                                Translation s5 = await translator
                                    .translate('Log in', to: 'es');
                                Translation s6 = await translator
                                    .translate('Sign up', to: 'es');
                                Translation s7 = await translator
                                    .translate('Blog', to: 'es');
                                Translation s9 = await translator
                                    .translate(' Blog', to: 'es');
                                Translation s8 = await translator
                                    .translate('White Paper', to: 'es');
                                Translation s10 = await translator
                                    .translate('Updates', to: 'es');

                                sc1 = s1.text;
                                sc2 = s2.text;
                                sc3 = s3.text;
                                sc4 = s4.text;
                                sc5 = s5.text;
                                sc6 = s6.text;
                                sc7 = s7.text;
                                sc8 = s8.text;
                                sc9 = s9.text;
                                sc10 = s10.text;

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
                                Translation s4 = await translator
                                    .translate('Service providers', to: 'fr');
                                Translation s5 = await translator
                                    .translate('Log in', to: 'fr');
                                Translation s6 = await translator
                                    .translate('Sign up', to: 'fr');
                                Translation s7 = await translator
                                    .translate('Blog', to: 'fr');
                                Translation s9 = await translator
                                    .translate(' Blog', to: 'fr');
                                Translation s8 = await translator
                                    .translate('White Paper', to: 'fr');
                                Translation s10 = await translator
                                    .translate('Updates', to: 'fr');

                                sc1 = s1.text;
                                sc2 = s2.text;
                                sc3 = s3.text;
                                sc4 = s4.text;
                                sc5 = s5.text;
                                sc6 = s6.text;
                                sc7 = s7.text;
                                sc8 = s8.text;
                                sc9 = s9.text;

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
                                Translation s4 = await translator
                                    .translate('Service providers', to: 'de');
                                Translation s5 = await translator
                                    .translate('Log in', to: 'de');
                                Translation s6 = await translator
                                    .translate('Sign up', to: 'de');
                                Translation s7 = await translator
                                    .translate('Blog', to: 'de');
                                Translation s9 = await translator
                                    .translate(' Blog', to: 'de');
                                Translation s8 = await translator
                                    .translate('White Paper', to: 'de');
                                Translation s10 = await translator
                                    .translate('Updates', to: 'de');

                                sc1 = s1.text;
                                sc2 = s2.text;
                                sc3 = s3.text;
                                sc4 = s4.text;
                                sc5 = s5.text;
                                sc6 = s6.text;
                                sc7 = s7.text;
                                sc8 = s8.text;
                                sc9 = s9.text;
                                sc10 = s10.text;
                                setState(() {
                                  dropdownValue = value!;
                                });
                              }
                            },
                            items: list
                                .map<DropdownMenuItem<String>>((String value) {
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
                                sc5,
                                style: GoogleFonts.poppins(
                                    fontSize: w * 0.008, color: Colors.white),
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
                                sc6,
                                style: GoogleFonts.poppins(
                                    fontSize: w * 0.008, color: Colors.black),
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
              Stack(
                children: [
                  Image.asset(
                    'assets/images/blog_bg.png',
                    width: w,
                  ),
                  SizedBox(
                    width: w,
                    height: (w + h) * 0.13,
                    child: Column(
                      children: [
                        SizedBox(
                          height: (h + w) * 0.02,
                        ),
                        Text(
                          sc7,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: (h + w) * 0.01),
                        ),
                        SizedBox(
                          height: (h + w) * 0.04,
                        ),
                        SizedBox(
                          height: (h + w) * 0.04,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              sc8,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: (h + w) * 0.01),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.arrow_right_alt,
                              color: Colors.white,
                            ),
                            Text(
                              sc9,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: (h + w) * 0.01),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.arrow_right_alt, color: Colors.white),
                            Text(
                              sc10,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: (h + w) * 0.01),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                width: w,
                padding: EdgeInsets.symmetric(
                    horizontal: (w + h) * 0.04, vertical: (w + h) * 0.04),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        ElevatedButton(
                            child: Text('Add Article'),
                            onPressed: () async {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    content: SizedBox(
                                      // height: 600,
                                      // width: 500,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Select Name'),
                                          const SizedBox(height: 10),
                                          DropdownButtonFormField(
                                            isExpanded: true,
                                            hint: Text('Abc'),
                                            value: selectedName,
                                            items: namesList
                                                .map<DropdownMenuItem<String>>(
                                                    (String name) {
                                              return DropdownMenuItem<String>(
                                                value: name,
                                                child: Text(name),
                                              );
                                            }).toList(),
                                            onChanged: (value) async {
                                              updateSelectedName(value);
                                            },
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 15, right: 15),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                borderSide: const BorderSide(
                                                    color: Colors.black),
                                              ),
                                              filled: true,
                                              hintStyle: const TextStyle(
                                                color: Color(0xFF8A94A6),
                                                fontSize: 16,
                                              ),
                                              fillColor: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Text('Select Title'),
                                          const SizedBox(height: 10),
                                          Container(
                                            height: 47,
                                            width: w * .40,
                                            decoration: BoxDecoration(
                                              border: Border.all(),
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Center(
                                              child: TextField(
                                                controller: titleController,
                                                decoration: InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16),
                                                    border: InputBorder.none),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Text('Picture Path'),
                                          const SizedBox(height: 10),
                                          Container(
                                            height: 47,
                                            width: w * .40,
                                            decoration: BoxDecoration(
                                              border: Border.all(),
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Center(
                                              child: TextField(
                                                controller:
                                                    picturePathController,
                                                decoration: InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16),
                                                    border: InputBorder.none),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Text('Enter Article Heading'),
                                          const SizedBox(height: 10),
                                          Container(
                                            height: 47,
                                            width: w * .40,
                                            decoration: BoxDecoration(
                                              border: Border.all(),
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Center(
                                              child: TextField(
                                                controller:
                                                    articleHeadingController,
                                                decoration: InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16),
                                                    border: InputBorder.none),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Text('Enter Article Detail'),
                                          const SizedBox(height: 10),
                                          Container(
                                            height: 47,
                                            width: w * .40,
                                            decoration: BoxDecoration(
                                              border: Border.all(),
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Center(
                                              child: TextField(
                                                controller:
                                                    articleDetailController,
                                                decoration: InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16),
                                                    border: InputBorder.none),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 30),
                                          SizedBox(
                                            width: w * .40,
                                            height: 45,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.black,
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 10),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10), // <-- Radius
                                                  ),
                                                ),
                                                onPressed: () async {
                                                  await createArticle(
                                                      titleController.text,
                                                      articleHeadingController
                                                          .text,
                                                      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
                                                      articleDetailController
                                                          .text);
                                                },
                                                child: Text(
                                                  "Save",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 18,
                                                      color: Colors.white),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            }),
                        // SizedBox(
                        //   height: 400,
                        //   child: StreamBuilder<QuerySnapshot>(
                        //     stream:
                        //         _firestore.collection('articles').snapshots(),
                        //     builder: (context, snapshot) {
                        //       if (snapshot.hasError) {
                        //         return Text('Error');
                        //       }
                        //       if (snapshot.connectionState ==
                        //           ConnectionState.waiting) {
                        //         return CircularProgressIndicator();
                        //       }

                        //       final articles = snapshot.data!.docs
                        //           .map((DocumentSnapshot doc) {
                        //         Map<String, dynamic> data =
                        //             doc.data()! as Map<String, dynamic>;
                        //         return Article(
                        //             title: data['title'],
                        //             heading: data['heading'],
                        //             imagePath: data['imgPath'],
                        //             details: data['details']);
                        //       }).toList();

                        //       return Container(
                        //         color: Colors.red,
                        //         width: 500,
                        //         height: 50,
                        //         child: ListView.builder(
                        //           itemCount: articles.length,
                        //           physics: NeverScrollableScrollPhysics(),
                        //           itemBuilder: (context, index) {
                        //             final article = articles[index];
                        //             return ListTile(
                        //               title: Text(article.title),
                        //               subtitle: Text(article.heading),
                        //               trailing: Text(article.details),
                        //             );
                        //           },
                        //         ),
                        //       );
                        //     },
                        //   ),
                        // ),
                        SizedBox(
                          width: (w + h) * 0.29,
                          child: Text(
                            articlesList[selectedIndex]['title'],
                            style: TextStyle(
                                fontSize: (w + h) * 0.01,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Image.asset(
                          'assets/images/mac.png',
                          width: (w + h) * 0.3,
                          height: (w + h) * 0.3,
                        ),
                        Container(
                          //  width: (w+h) *0.2 , height:(w+h) *0.2  ,
                          padding: const EdgeInsets.all(20),
                          color: const Color(0xffF1F5FF),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/qout.png'),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                      width: (w + h) * 0.19,
                                      child: Text(articlesList[selectedIndex]
                                          ['heading'])),
                                  SizedBox(
                                    height: (w + h) * 0.007,
                                  ),
                                  Text(
                                    'John, a Renewable Energy Enthusiast',
                                    style: TextStyle(color: Colors.pinkAccent),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: (w + h) * 0.02,
                        ),
                        Container(
                          width: (w + h) * 0.26,
                          child: Column(
                            children: [
                              Text(articlesList[selectedIndex]['details']),
                              // Padding(
                              //   padding: EdgeInsets.symmetric(horizontal: 20),
                              //   child: Column(
                              //     children: [
                              //       Text(
                              //           '''  The Rise of Battery Energy Chargers: We examine the growing demand for battery energy chargers, fueled by the rapid growth of renewable energy sources and the increasing need for energy storage. From residential households seeking energy independence to businesses aiming to optimize their power usage, battery energy chargers offer a versatile and scalable solution.   '''),
                              //       Text(
                              //           '''  How Battery Energy Chargers Work: We delve into the intricate workings of battery energy chargers, shedding light on their key components, such as the battery management system (BMS) and the charging algorithms. Exploring the different charging technologies and methods, we uncover the efficient ways in which these chargers replenish and maintain energy storage systems. '''),
                              //       Text(
                              //           '''   Applications and Use Cases: We explore various applications where battery energy chargers are making a significant impact. From residential installations enabling self-consumption of solar energy to commercial deployments providing backup power during peak demand or critical situations, we showcase the versatility and versatility of these chargers across different sectors. '''),
                              //       Text(
                              //           '''   Advantages of Battery Energy Chargers: Highlighting the benefits of battery energy chargers, we discuss their ability to enhance energy resilience, reduce electricity costs, and mitigate the impact of power outages. We also touch upon their potential to support grid stabilization and facilitate the integration of renewable energy sources, contributing to a greener and more sustainable energy ecosystem '''),
                              //       Text(
                              //           '''  Future Trends and Innovations: Looking ahead, we provide insights into the future of battery energy chargers, discussing emerging trends and innovations. This includes advancements in battery technologies, integration with smart home systems, and the potential of vehicle-to-grid (V2G) technology, where electric vehicles can serve as mobile energy storage units.  '''),
                              //       Text(
                              //           '''  The Rise of Battery Energy Chargers: We examine the growing demand for battery energy chargers, fueled by the rapid growth of renewable energy sources and the increasing need for energy storage. From residential households seeking energy independence to businesses aiming to optimize their power usage, battery energy chargers offer a versatile and scalable solution.   '''),
                              //     ],
                              //   ),
                              // )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/man.png'),
                            const Text('Author: '),
                            Text(
                              articlesList[selectedIndex]['username'],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: (h + w) * 0.007,
                            ),
                            const Text(
                              '5/28/2023 ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const CircleAvatar(
                                backgroundColor: Colors.black,
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: (h + w) * 0.005,
                            ),
                            Row(
                              children: articlesList.map((e) {
                                int index = articlesList.indexOf(e);
                                return GestureDetector(
                                  onTap: () {
                                    updateIndex(index);
                                  },
                                  child: Container(
                                    width: (h + w) * 0.11,
                                    height: (h + w) * 0.2,
                                    margin: EdgeInsets.only(right: 10),
                                    padding: const EdgeInsets.all(15),
                                    color: const Color(0xffE7EBF6),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(index == 0
                                            ? 'assets/images/first_one.jpg.png'
                                            : index == 1
                                                ? 'assets/images/second_one.jpg.png'
                                                : 'assets/images/third_one.jpg.png'),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          e['title'],
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: (h + w) * 0.008,
                                          ),
                                        ),
                                        SizedBox(
                                          height: (h + w) * 0.005,
                                        ),
                                        Text(
                                          e['heading'],
                                          style: TextStyle(
                                            fontSize: (h + w) * 0.005,
                                          ),
                                        ),
                                        SizedBox(
                                          height: (h + w) * 0.008,
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [Text('01')],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),

                            // Container(
                            //   width: (h + w) * 0.11,
                            //   height: (h + w) * 0.2,
                            //   padding: const EdgeInsets.all(15),
                            //   color: const Color(0xffE7EBF6),
                            //   child: Column(
                            //     crossAxisAlignment: CrossAxisAlignment.start,
                            //     children: [
                            //       Image.asset(
                            //           'assets/images/third_one.jpg.png'),
                            //       const SizedBox(
                            //         height: 10,
                            //       ),
                            //       Text(
                            //         ' Empowering Energy Independence: Unleashing the Potential of Battery Storage Systems',
                            //         style: TextStyle(
                            //           fontWeight: FontWeight.bold,
                            //           fontSize: (h + w) * 0.008,
                            //         ),
                            //       ),
                            //       SizedBox(
                            //         height: (h + w) * 0.005,
                            //       ),
                            //       Text(
                            //         'Lorem ipsum dolor sit amet, ',
                            //         style: TextStyle(
                            //           fontSize: (h + w) * 0.005,
                            //         ),
                            //       ),
                            //       Text(
                            //         'consectetuer adipiscing elit. ',
                            //         style: TextStyle(
                            //           fontSize: (h + w) * 0.005,
                            //         ),
                            //       ),
                            //       SizedBox(
                            //         height: (h + w) * 0.008,
                            //       ),
                            //       const Row(
                            //         mainAxisAlignment: MainAxisAlignment.end,
                            //         children: [Text('02')],
                            //       )
                            //     ],
                            //   ),
                            // ),
                            // SizedBox(
                            //   width: (h + w) * 0.005,
                            // ),
                            // Container(
                            //   width: (h + w) * 0.11,
                            //   height: (h + w) * 0.2,
                            //   padding: const EdgeInsets.all(15),
                            //   color: const Color(0xffE7EBF6),
                            //   child: Column(
                            //     crossAxisAlignment: CrossAxisAlignment.start,
                            //     children: [
                            //       Image.asset(
                            //           'assets/images/second_one.jpg.png'),
                            //       const SizedBox(
                            //         height: 10,
                            //       ),
                            //       Text(
                            //         'Driving Towards a Sustainable Future: How Vehya is Revolutionizing the Electrification Landscape',
                            //         style: TextStyle(
                            //           fontWeight: FontWeight.bold,
                            //           fontSize: (h + w) * 0.008,
                            //         ),
                            //       ),
                            //       SizedBox(
                            //         height: (h + w) * 0.005,
                            //       ),
                            //       Text(
                            //         'Lorem ipsum dolor sit amet, ',
                            //         style: TextStyle(
                            //           fontSize: (h + w) * 0.005,
                            //         ),
                            //       ),
                            //       Text(
                            //         'consectetuer adipiscing elit. ',
                            //         style: TextStyle(
                            //           fontSize: (h + w) * 0.005,
                            //         ),
                            //       ),
                            //       SizedBox(
                            //         height: (h + w) * 0.001,
                            //       ),
                            //       const Row(
                            //         mainAxisAlignment: MainAxisAlignment.end,
                            //         children: [Text('03')],
                            //       )
                            //     ],
                            //   ),
                            // ),
                            SizedBox(
                              width: (h + w) * 0.005,
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
                            ),
                          ],
                        ),
                        SizedBox(
                          height: (w + h) * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/images/email.png'),
                                    SizedBox(
                                      width: (h + w) * 0.003,
                                    ),
                                    const Text('Email Address')
                                  ],
                                ),
                                SizedBox(
                                  height: (w + h) * 0.01,
                                ),
                                Container(
                                  height: (h + w) * 0.018,
                                  width: (h + w) * 0.07,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      border: Border.all(color: Colors.grey)),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        prefix: SizedBox(
                                          width: 5,
                                        ),
                                        hintText: 'Your Email',
                                        hintStyle:
                                            TextStyle(color: Colors.grey)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: (w + h) * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/images/phone_icon.png'),
                                    SizedBox(
                                      width: (h + w) * 0.003,
                                    ),
                                    const Text('Phone Number')
                                  ],
                                ),
                                SizedBox(
                                  height: (w + h) * 0.01,
                                ),
                                Container(
                                  height: (h + w) * 0.018,
                                  width: (h + w) * 0.07,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      border: Border.all(color: Colors.grey)),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        prefix: SizedBox(
                                          width: 5,
                                        ),
                                        hintText: 'Telephone',
                                        hintStyle:
                                            TextStyle(color: Colors.grey)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: (w + h) * 0.03,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/images/person.png'),
                                    SizedBox(
                                      width: (h + w) * 0.003,
                                    ),
                                    const Text('Name')
                                  ],
                                ),
                                SizedBox(
                                  height: (w + h) * 0.01,
                                ),
                                Container(
                                  height: (h + w) * 0.018,
                                  width: (h + w) * 0.07,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      border: Border.all(color: Colors.grey)),
                                  child: const TextField(
                                    decoration: InputDecoration(
                                        prefix: SizedBox(
                                          width: 5,
                                        ),
                                        hintText: 'Name',
                                        hintStyle:
                                            TextStyle(color: Colors.grey)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: (w + h) * 0.01,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: (w + h) * 0.02,
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
                                      width: 120,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/contact.png',
                                            width: 10,
                                            height: 10,
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          const Text(
                                            'Contact',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                    )),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/man.png'),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  articlesList[selectedIndex]['username'],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Founder of Vehya',
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/tw.png',
                                      width: 25,
                                      height: 25,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset('assets/images/fb.png',
                                        width: 25, height: 25),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset('assets/images/lin.png',
                                        width: 25, height: 25),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                    width: (h + w) * 0.06,
                                    child: Text(
                                      'William McCoy, the visionary founder of Vehya, is a passionate advocate for sustainable electrification. With his expertise and drive, he has created a platform that revolutionizes access to electrification products and services.',
                                      style: TextStyle(fontSize: 12),
                                    )),
                                SizedBox(
                                  height: 10,
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
                                      width: 120,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/contact.png',
                                            width: 10,
                                            height: 10,
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          const Text(
                                            'Contact',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ))
                              ],
                            )
                          ],
                        )
                      ],
                    )
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
        ),
      ),
    );
  }
}

class Article {
  final String title;
  final String heading;
  final String imagePath;
  final String details;
  final String? username;
  final String? userImage;

  Article(
      {required this.title,
      required this.heading,
      required this.imagePath,
      required this.details,
      this.username,
      this.userImage});
}
