

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:translator/translator.dart';
import 'package:vehya/pages/content.dart';
import 'package:vehya/pages/login.dart';
import 'package:vehya/pages/service_providers.dart';
import 'package:vehya/pages/home.dart';

import 'register.dart';


const List<String> list = <String>['English', 'Spanish', 'French' , 'Germany'];

String dropdownValue = list.first;



String sa1 = 'Home' ;
String sa2 = 'About' ;
String sa3 = 'Content' ;
String sa4 = 'Service providers' ;
String sa5 = 'Log in' ;
String sa6 = 'Sign up' ;
String sa7 = 'How Does It Work?' ;
String sa8 = 'We provide  an easy-to-use marketplace' ;
String sa9 = ' Partner with sustainable product manufacturers' ;
String sa10 = 'Run outbound logistics' ;
String sa11 = 'Provide verified service providers' ;
String sa12 = 'Offer service level agreements' ;
String sa13 = 'Handle maintenance & support' ;
String sa14 = 'Partnerships' ;
String sa15 = 'Vehya helps its partners deliver products and services to their customers.' ;
String sa16 = 'Service Providers ' ;
String sa17 = 'Nationwide network ' ;
String sa18 = 'Vehya-certified ' ;
String sa19 = 'Many EVITP-certified' ;
String sa20 = 'Highest insurance' ;
String sa21 = 'standards ' ;
String sa22 = 'Mobile deployment' ;
String sa23 = 'Logistics' ;
String sa24 = 'Our outbound logistics makes it easy for partners and customers and provides a seamless marketplace solution.' ;
String sa25 = 'North America' ;
String sa26 = 'Latam (Mexico and Brazil)' ;


class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {



  final translator = GoogleTranslator();


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
                        InkWell(
                            onTap : (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>  Home(x : false)));
                            } ,
                            child:  Text(sa1 , style: TextStyle(color: Colors.grey),)),
                        SizedBox(width: (w + h) * 0.035 ,) ,
                        InkWell(
                            onTap : (){
                            } ,
                            child:   Text(sa2 , style: TextStyle(fontWeight: FontWeight.bold),)),
                        SizedBox(width: (w + h) * 0.035 ,) ,
                        InkWell(
                            onTap : (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>Content()));
                            } ,
                            child:   Text(sa3 , style: TextStyle(color: Colors.grey),)),
                        SizedBox(width: (w + h) * 0.035 ,) ,
                        InkWell(
                            onTap : (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>const ServiceProviders()));
                            } ,
                            child:   Text(sa4 , style: TextStyle(color: Colors.grey),)),
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

                              if(value == 'English'){

                                  sa1 = 'Home' ;
                                  sa2 = 'About' ;
                                  sa3 = 'Content' ;
                                  sa4 = 'Service providers' ;
                                  sa5 = 'Log in' ;
                                  sa6 = 'Sign up' ;
                                  sa7 = 'How Does It Work?' ;
                                  sa8 = 'We provide  an easy-to-use marketplace' ;
                                  sa9 = ' Partner with sustainable product manufacturers' ;
                                  sa10 = 'Run outbound logistics' ;
                                  sa11 = 'Provide verified service providers' ;
                                  sa12 = 'Offer service level agreements' ;
                                  sa13 = 'Handle maintenance & support' ;
                                  sa14 = 'Partnerships' ;
                                  sa15 = 'Vehya helps its partners deliver products and services to their customers.' ;
                                  sa16 = 'Service Providers ' ;
                                  sa17 = 'Nationwide network ' ;
                                  sa18 = 'Vehya-certified ' ;
                                  sa19 = 'Many EVITP-certified' ;
                                  sa20 = 'Highest insurance' ;
                                  sa21 = 'standards ' ;
                                  sa22 = 'Mobile deployment' ;
                                  sa23 = 'Logistics' ;
                                  sa24 = 'Our outbound logistics makes it easy for partners and customers and provides a seamless marketplace solution.' ;
                                  sa25 = 'North America' ;
                                  sa26 = 'Latam (Mexico and Brazil)' ;

                                setState(() {
                                  dropdownValue = value! ;
                                });

                              }else if (value == 'Spanish'){

                                Translation s1 =   await translator.translate('Home' , to : 'es');
                                Translation s2 =   await translator.translate('About' , to : 'es');
                                Translation s3 =   await translator.translate('Content' , to : 'es');
                                Translation s4 =   await translator.translate('Service providers' , to : 'es');
                                Translation s5 =   await translator.translate('Log in' , to : 'es');
                                Translation s6 =   await translator.translate('Sign up' , to : 'es');
                                Translation s7 =   await translator.translate('How Does It Work?' , to : 'es');
                                Translation s8 =   await translator.translate('We provide  an easy-to-use marketplace' , to : 'es');
                                Translation s9 =   await translator.translate('Partner with sustainable product manufacturers' , to : 'es');
                                Translation s10 =   await translator.translate('Run outbound logistics' , to : 'es');
                                Translation s11 =   await translator.translate('Provide verified service providers' , to : 'es');
                                Translation s12 =   await translator.translate('Offer service level agreements' , to : 'es');
                                Translation s13 =   await translator.translate('Handle maintenance & support' , to : 'es');
                                Translation s14 =   await translator.translate('Partnerships' , to : 'es');
                                Translation s15 =   await translator.translate('Vehya helps its partners deliver products and services to their customers' , to : 'es');
                                Translation s16 =   await translator.translate('Service Providers' , to : 'es');
                                Translation s17 =   await translator.translate('Nationwide network' , to : 'es');
                                Translation s18 =   await translator.translate('Vehya-certified' , to : 'es');
                                Translation s19 =   await translator.translate('Many EVITP-certified' , to : 'es');
                                Translation s20 =   await translator.translate('Highest insurance' , to : 'es');
                                Translation s21 =   await translator.translate('standards' , to : 'es');
                                Translation s22 =   await translator.translate('Mobile deployment' , to : 'es');
                                Translation s23 =   await translator.translate('Logistics' , to : 'es');
                                Translation s24 =   await translator.translate('Our outbound logistics makes it easy for partners and customers and provides a seamless marketplace solution' , to : 'es');
                                Translation s25 =   await translator.translate('North America' , to : 'es');
                                Translation s26 =   await translator.translate('Latam (Mexico and Brazil)' , to : 'es');


                                sa1 = s1.text;
                                sa2 = s2.text;
                                sa3 = s3.text;
                                sa4 = s4.text;
                                sa5 = s5.text;
                                sa6 = s6.text;
                                sa7 = s7.text;
                                sa8 = s8.text;
                                sa9 = s9.text;
                                sa10 = s10.text;
                                sa11 = s11.text;
                                sa12 = s12.text;
                                sa13 = s13.text;
                                sa14 = s14.text;
                                sa15 = s15.text;
                                sa16 = s16.text;
                                sa17 = s17.text;
                                sa18 = s18.text;
                                sa19 = s19.text;
                                sa20 = s20.text;
                                sa21 = s21.text;
                                sa22 = s22.text;
                                sa23 = s23.text;
                                sa24 = s24.text;
                                sa25 = s25.text;
                                sa26 = s26.text;



                                setState(() {
                                  dropdownValue = value!;

                                });
                              }else if (value == 'French'){

                                Translation s1 =   await translator.translate('Home' , to : 'fr');
                                Translation s2 =   await translator.translate('About' , to : 'fr');
                                Translation s3 =   await translator.translate('Content' , to : 'fr');
                                Translation s4 =   await translator.translate('Service providers' , to : 'fr');
                                Translation s5 =   await translator.translate('Log in' , to : 'fr');
                                Translation s6 =   await translator.translate('Sign up' , to : 'fr');
                                Translation s7 =   await translator.translate('How Does It Work?' , to : 'fr');
                                Translation s8 =   await translator.translate('We provide  an easy-to-use marketplace' , to : 'fr');
                                Translation s9 =   await translator.translate('Partner with sustainable product manufacturers' , to : 'fr');
                                Translation s10 =   await translator.translate('Run outbound logistics' , to : 'fr');
                                Translation s11 =   await translator.translate('Provide verified service providers' , to : 'fr');
                                Translation s12 =   await translator.translate('Offer service level agreements' , to : 'fr');
                                Translation s13 =   await translator.translate('Handle maintenance & support' , to : 'fr');
                                Translation s14 =   await translator.translate('Partnerships' , to : 'fr');
                                Translation s15 =   await translator.translate('Vehya helps its partners deliver products and services to their customers' , to : 'fr');
                                Translation s16 =   await translator.translate('Service Providers' , to : 'fr');
                                Translation s17 =   await translator.translate('Nationwide network' , to : 'fr');
                                Translation s18 =   await translator.translate('Vehya-certified' , to : 'fr');
                                Translation s19 =   await translator.translate('Many EVITP-certified' , to : 'fr');
                                Translation s20 =   await translator.translate('Highest insurance' , to : 'fr');
                                Translation s21 =   await translator.translate('standards' , to : 'fr');
                                Translation s22 =   await translator.translate('Mobile deployment' , to : 'fr');
                                Translation s23 =   await translator.translate('Logistics' , to : 'fr');
                                Translation s24 =   await translator.translate('Our outbound logistics makes it easy for partners and customers and provides a seamless marketplace solution' , to : 'fr');
                                Translation s25 =   await translator.translate('North America' , to : 'fr');
                                Translation s26 =   await translator.translate('Latam (Mexico and Brazil)' , to : 'fr');


                                sa1 = s1.text;
                                sa2 = s2.text;
                                sa3 = s3.text;
                                sa4 = s4.text;
                                sa5 = s5.text;
                                sa6 = s6.text;
                                sa7 = s7.text;
                                sa8 = s8.text;
                                sa9 = s9.text;
                                sa10 = s10.text;
                                sa11 = s11.text;
                                sa12 = s12.text;
                                sa13 = s13.text;
                                sa14 = s14.text;
                                sa15 = s15.text;
                                sa16 = s16.text;
                                sa17 = s17.text;
                                sa18 = s18.text;
                                sa19 = s19.text;
                                sa20 = s20.text;
                                sa21 = s21.text;
                                sa22 = s22.text;
                                sa23 = s23.text;
                                sa24 = s24.text;
                                sa25 = s25.text;
                                sa26 = s26.text;



                                setState(() {
                                  dropdownValue = value!;

                                });
                              }else if (value == 'Germany'){

                                Translation s1 =   await translator.translate('Home' , to : 'de');
                                Translation s2 =   await translator.translate('About' , to : 'de');
                                Translation s3 =   await translator.translate('Content' , to : 'de');
                                Translation s4 =   await translator.translate('Service providers' , to : 'de');
                                Translation s5 =   await translator.translate('Log in' , to : 'de');
                                Translation s6 =   await translator.translate('Sign up' , to : 'de');
                                Translation s7 =   await translator.translate('How Does It Work?' , to : 'de');
                                Translation s8 =   await translator.translate('We provide  an easy-to-use marketplace' , to : 'de');
                                Translation s9 =   await translator.translate('Partner with sustainable product manufacturers' , to : 'de');
                                Translation s10 =   await translator.translate('Run outbound logistics' , to : 'de');
                                Translation s11 =   await translator.translate('Provide verified service providers' , to : 'de');
                                Translation s12 =   await translator.translate('Offer service level agreements' , to : 'de');
                                Translation s13 =   await translator.translate('Handle maintenance & support' , to : 'de');
                                Translation s14 =   await translator.translate('Partnerships' , to : 'de');
                                Translation s15 =   await translator.translate('Vehya helps its partners deliver products and services to their customers' , to : 'de');
                                Translation s16 =   await translator.translate('Service Providers' , to : 'de');
                                Translation s17 =   await translator.translate('Nationwide network' , to : 'de');
                                Translation s18 =   await translator.translate('Vehya-certified' , to : 'de');
                                Translation s19 =   await translator.translate('Many EVITP-certified' , to : 'de');
                                Translation s20 =   await translator.translate('Highest insurance' , to : 'de');
                                Translation s21 =   await translator.translate('standards' , to : 'de');
                                Translation s22 =   await translator.translate('Mobile deployment' , to : 'de');
                                Translation s23 =   await translator.translate('Logistics' , to : 'de');
                                Translation s24 =   await translator.translate('Our outbound logistics makes it easy for partners and customers and provides a seamless marketplace solution' , to : 'de');
                                Translation s25 =   await translator.translate('North America' , to : 'de');
                                Translation s26 =   await translator.translate('Latam (Mexico and Brazil)' , to : 'de');


                                sa1 = s1.text;
                                sa2 = s2.text;
                                sa3 = s3.text;
                                sa4 = s4.text;
                                sa5 = s5.text;
                                sa6 = s6.text;
                                sa7 = s7.text;
                                sa8 = s8.text;
                                sa9 = s9.text;
                                sa10 = s10.text;
                                sa11 = s11.text;
                                sa12 = s12.text;
                                sa13 = s13.text;
                                sa14 = s14.text;
                                sa15 = s15.text;
                                sa16 = s16.text;
                                sa17 = s17.text;
                                sa18 = s18.text;
                                sa19 = s19.text;
                                sa20 = s20.text;
                                sa21 = s21.text;
                                sa22 = s22.text;
                                sa23 = s23.text;
                                sa24 = s24.text;
                                sa25 = s25.text;
                                sa26 = s26.text;



                                setState(() {
                                  dropdownValue = value!;

                                });



                              }
                            },
                            items: list.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ) ,

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
                                sa5,
                                style: GoogleFonts.poppins(
                                    fontSize: w * 0.008, color: Colors.white),
                              )),
                          SizedBox(
                            width: w * 0.001,
                          ),
                          OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side:
                                  BorderSide(width: 1.0, color: Colors.black),

                                  shape: StadiumBorder()),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Register()));
                              },
                              child: Text(
                                sa6,
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

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 60 , vertical: 30),
                color: const Color(0xffE7EBF6),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(sa7 , style: TextStyle(fontSize: h * 0.08),) ,
                        const  SizedBox(height: 20,),
                       Padding(
                         padding: const EdgeInsets.only(left: 30 , top: 10),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(sa8 , style: TextStyle(fontSize: h * 0.02),) ,
                             const  SizedBox(height: 20,),
                             Text(sa9 , style: TextStyle(fontSize: h * 0.02),) ,
                             const  SizedBox(height: 20,),
                             Text(sa10 , style: TextStyle(fontSize: h * 0.02),) ,
                             const  SizedBox(height: 20,),
                             Text(sa11 , style: TextStyle(fontSize: h * 0.02),) ,
                             const  SizedBox(height: 20,),
                             Text(sa12 , style: TextStyle(fontSize: h * 0.02),) ,
                             const  SizedBox(height: 20,),
                             Text(sa13 , style: TextStyle(fontSize: h * 0.02),) ,
                           ],
                         ),
                       )
                      ],
                    ),

                    Image.asset('assets/images/first_image.png' , height: h * 0.5 , width: w * 0.4 ,)
                  ],
                ),
              ),

              Container(
                width: w,
                height: 600,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(image: AssetImage('assets/images/background.png' )) ,
                ),
                child:  Row(
                  children: [
                    Container(
                      width: w * 0.3,
                      margin: const EdgeInsets.only(left: 70 , top: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Text(sa14 , style: TextStyle(fontSize: h * 0.06 , fontWeight: FontWeight.bold), ),
                         const  SizedBox(height: 15,),
                            Text(sa15) ,
                        ],
                      ),

                    ) ,
                    Container(
                      width: w * 0.45,
                      margin: const EdgeInsets.symmetric(vertical: 40 ),
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Stack(
                                children: [
                                  Image.asset('assets/images/shape.png' , width: (w + h) * 0.23 , height: (w + h) * 0.20,),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     SizedBox(width: (w + h) * 0.11,),
                                     Image.asset('assets/images/pink_phone.png' , width: (w + h) * 0.14 , height: (w + h) * 0.12,),
                                   ],
                                 )
                                ],
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
                padding: const EdgeInsets.symmetric(horizontal: 60 , vertical: 30),
                color: const Color(0xffE7EBF6),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(sa16 , style: TextStyle(fontSize: h * 0.06),) ,
                        const  SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 30 , top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(sa17, style: TextStyle(fontSize: h * 0.02 , fontWeight: FontWeight.bold),) ,
                              const  SizedBox(height: 20,),
                              Text(sa18 , style: TextStyle(fontSize: h * 0.02 , fontWeight: FontWeight.bold),) ,
                              const  SizedBox(height: 20,),
                              Text(sa19 , style: TextStyle(fontSize: h * 0.02 , fontWeight: FontWeight.bold),) ,
                              const  SizedBox(height: 20,),
                              Text(sa20, style: TextStyle(fontSize: h * 0.02 ,  fontWeight: FontWeight.bold),) ,
                              Text(sa21 , style: TextStyle(fontSize: h * 0.02 , fontWeight: FontWeight.bold),) ,
                              const  SizedBox(height: 20,),
                              Text(sa22 , style: TextStyle(fontSize: h * 0.02 , fontWeight: FontWeight.bold),) ,
                            ],
                          ),
                        )
                      ],
                    ),

                    Image.asset('assets/images/first_image.png' , height: h * 0.5 , width: w * 0.4 ,)
                  ],
                ),
              ),
              Container(
                width: w,
                height: 600,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(image: AssetImage('assets/images/second_bg_line.png' )) ,
                ),
                child:  Row(
                  children: [
                    Container(
                      width: w * 0.3,
                      margin: const EdgeInsets.only(left: 40 , top: 40),
                      child:   Column(
                        children: [
                           Text(sa23 , style: TextStyle( fontSize: (w + h) * 0.03)  ,),
                          SizedBox(height: 30,),
                          Container(
                            width: 300,
                            child:  Text(sa24),
                          ),
                          SizedBox(
                            height: (w+h) * 0.05,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(sa25) ,
                              SizedBox(height: (h + w )* 0.015 ,),
                              Text(sa26) ,
                            ],
                          ),
                        ],
                      ),
                    ) ,
                    Container(
                      width: w * 0.45,
                      margin: const EdgeInsets.only(left: 150 , top: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         Image.asset('assets/images/world.png' , width: (h + w) * 0.25, height: (h + w) * 0.22,)
                        ],
                      ),
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


//
//
// Row(
//
// children: [
// InkWell(
// onTap : (){
// Navigator.push(context, MaterialPageRoute(builder: (_)=>  Home(x : true)));
// } ,
// child: const Text('Home' , style: TextStyle(color: Colors.grey),)),
// SizedBox(width: (w + h) * 0.035 ,) ,
// InkWell(
// onTap : (){
// } ,
// child: const Text('About' , style: TextStyle(fontWeight: FontWeight.bold),)),
// SizedBox(width: (w + h) * 0.035 ,) ,
// InkWell(
// onTap : (){
// Navigator.push(context, MaterialPageRoute(builder: (_)=>About()));
// } ,
// child: const Text('Content' , style: TextStyle(color: Colors.grey),)),
// SizedBox(width: (w + h) * 0.035 ,) ,
// InkWell(
// onTap : (){
// Navigator.push(context, MaterialPageRoute(builder: (_)=>const ServiceProviders()));
// } ,
// child: const Text('Service providers' , style: TextStyle(color: Colors.grey),)),
// ],
// ),