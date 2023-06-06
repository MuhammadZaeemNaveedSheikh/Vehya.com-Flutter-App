
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:translator/translator.dart';
import 'package:vehya/pages/about.dart';
import 'package:vehya/pages/content.dart';
import 'package:vehya/pages/login.dart';
import 'package:vehya/pages/register.dart';
import 'package:vehya/pages/home.dart';


const List<String> list = <String>['English', 'Spanish', 'French' , 'Germany'];

String dropdownValue = list.first;

String sb1 = 'Home' ;
String sb2 = 'About' ;
String sb3 = 'Content' ;
String sb4 = 'Service providers' ;
String sb5 = 'Log in' ;
String sb6 = 'Sign up' ;
String sb7 = 'Service Providers' ;
String sb8 = 'Easy payout' ;
String sb9 = ' Service Providers 2.0 ' ;
String sb10 = ' to customer' ;
String sb11 = ' Stock options &' ;
String sb12 = ' prizes' ;
String sb13 = 'Messaging' ;
String sb14 = 'Account' ;
String sb15 = 'manager' ;
String sb16 = 'Job details' ;
String sb17 = '(photos, documents, etc.) ' ;
String sb18 = 'Payout ' ;
String sb19 = 'Email Address' ;
String sb20 = 'Your Email' ;
String sb21 = 'Phone Number ' ;
String sb22 = 'Telephone ' ;
String sb23 = 'Name' ;
String sb24 = 'Name' ;
String sb25 = 'Contact' ;
String sb26 = 'Direct connect' ;


class ServiceProviders extends StatefulWidget {
  const ServiceProviders({Key? key}) : super(key: key);

  @override
  State<ServiceProviders> createState() => _ServiceProvidersState();
}

class _ServiceProvidersState extends State<ServiceProviders> {
  @override
  Widget build(BuildContext context) {


    final  h = MediaQuery.of(context).size.height;
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
                            onTap : (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=> Home(x: false)));
                            } ,
                            child:   Text(ss1 , style: TextStyle(color: Colors.grey),)),
                        SizedBox(width: w * 0.08 ,) ,
                        InkWell(
                            onTap : (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>const About()));
                            } ,
                            child:   Text(ss2 , style: TextStyle(color: Colors.grey),)),
                        SizedBox(width: w * 0.08 ,) ,
                        InkWell(
                            onTap : (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=> const Content()));
                            } ,
                            child:   Text(ss3 , style: TextStyle(color: Colors.grey),)),
                        SizedBox(width: w * 0.08 ,) ,
                        InkWell(
                            onTap : (){

                            } ,
                            child:   Text(ss4 , style: TextStyle(fontWeight: FontWeight.bold),)),
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


                                  sb1 = 'Home' ;
                                  sb2 = 'About' ;
                                  sb3 = 'Content' ;
                                  sb4 = 'Service providers' ;
                                  sb5 = 'Log in' ;
                                  sb6 = 'Sign up' ;
                                  sb7 = 'Service Providers' ;
                                  sb8 = 'Easy payout' ;
                                  sb9 = ' Service Providers 2.0' ;
                                  sb10 = 'Direct connect' ;
                                  sb11 = 'to customer' ;
                                  sb12 = 'Stock options &' ;
                                  sb13 = 'prizes' ;
                                  sb14 = 'Account' ;
                                  sb15 = 'manager' ;
                                  sb16 = 'Job details' ;
                                  sb17 = '(photos, documents, etc.) ' ;
                                  sb18 = 'Payout ' ;
                                  sb19 = 'Email Address' ;
                                  sb20 = 'Your Email' ;
                                  sb21 = 'Phone Number ' ;
                                  sb22 = 'Telephone ' ;
                                  sb23 = 'Name' ;
                                  sb24 = 'Name' ;
                                  sb25 = 'Contact' ;
                                  sb25 = 'Direct connect' ;

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
                                Translation s7 =   await translator.translate('Service Providers' , to : 'es');
                                Translation s9 =   await translator.translate(' Service Providers 2.0' , to : 'es');
                                Translation s8 =   await translator.translate('Easy payout?' , to : 'es');
                                Translation s10 =   await translator.translate('Direct connect' , to : 'es');
                                Translation s11 =   await translator.translate('to customer' , to : 'es');
                                Translation s12 =   await translator.translate('Stock options &' , to : 'es');
                                Translation s13=   await translator.translate(' prizes' , to : 'es');
                                Translation s14=   await translator.translate('Account' , to : 'es');
                                Translation s15=   await translator.translate('manager' , to : 'es');
                                Translation s16=   await translator.translate(' Job details' , to : 'es');
                                Translation s17=   await translator.translate(' (photos, documents, etc.)' , to : 'es');
                                Translation s18=   await translator.translate(' Payout' , to : 'es');
                                Translation s19=   await translator.translate(' Email Address' , to : 'es');
                                Translation s20=   await translator.translate(' Your Email' , to : 'es');
                                Translation s21=   await translator.translate(' Phone Number' , to : 'es');
                                Translation s22=   await translator.translate(' Telephone' , to : 'es');
                                Translation s23=   await translator.translate(' Name' , to : 'es');
                                Translation s24=   await translator.translate(' Name' , to : 'es');
                                Translation s25=   await translator.translate(' Contact' , to : 'es');
                                Translation s26=   await translator.translate(' Direct connect' , to : 'es');

                                sb1 = s1.text;
                                sb2 = s2.text;
                                sb3 = s3.text;
                                sb4 = s4.text;
                                sb5 = s5.text;
                                sb6 = s6.text;
                                sb7 = s7.text;
                                sb8 = s8.text;
                                sb9 = s9.text;
                                sb10 = s10.text;
                                sb11 = s11.text;
                                sb12 = s12.text;
                                sb13 = s13.text;
                                sb14 = s14.text;
                                sb15 = s15.text;
                                sb16 = s16.text;
                                sb17 = s17.text;
                                sb18 = s18.text;
                                sb19 = s19.text;
                                sb20 = s20.text;
                                sb21 = s21.text;
                                sb22 = s22.text;
                                sb23 = s23.text;
                                sb24 = s24.text;
                                sb25 = s25.text;
                                sb26 = s26.text;

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
                                Translation s7 =   await translator.translate('Service Providers' , to : 'fr');
                                Translation s9 =   await translator.translate(' Service Providers 2.0' , to : 'fr');
                                Translation s8 =   await translator.translate('Easy payout?' , to : 'fr');
                                Translation s10 =   await translator.translate('Direct connect' , to : 'fr');
                                Translation s11 =   await translator.translate('to customer' , to : 'fr');
                                Translation s12 =   await translator.translate('Stock options &' , to : 'fr');
                                Translation s13=   await translator.translate(' prizes' , to : 'fr');
                                Translation s14=   await translator.translate('Account' , to : 'fr');
                                Translation s15=   await translator.translate('manager' , to : 'fr');
                                Translation s16=   await translator.translate(' Job details' , to : 'fr');
                                Translation s17=   await translator.translate(' (photos, documents, etc.)' , to : 'fr');
                                Translation s18=   await translator.translate(' Payout' , to : 'fr');
                                Translation s19=   await translator.translate(' Email Address' , to : 'fr');
                                Translation s20=   await translator.translate(' Your Email' , to : 'fr');
                                Translation s21=   await translator.translate(' Phone Number' , to : 'fr');
                                Translation s22=   await translator.translate(' Telephone' , to : 'fr');
                                Translation s23=   await translator.translate(' Name' , to : 'fr');
                                Translation s24=   await translator.translate(' Name' , to : 'fr');
                                Translation s25=   await translator.translate(' Contact' , to : 'fr');
                                Translation s26=   await translator.translate(' Direct connect' , to : 'fr');

                                sb1 = s1.text;
                                sb2 = s2.text;
                                sb3 = s3.text;
                                sb4 = s4.text;
                                sb5 = s5.text;
                                sb6 = s6.text;
                                sb7 = s7.text;
                                sb8 = s8.text;
                                sb9 = s9.text;
                                sb10 = s10.text;
                                sb11 = s11.text;
                                sb12 = s12.text;
                                sb13 = s13.text;
                                sb14 = s14.text;
                                sb15 = s15.text;
                                sb16 = s16.text;
                                sb17 = s17.text;
                                sb18 = s18.text;
                                sb19 = s19.text;
                                sb20 = s20.text;
                                sb21 = s21.text;
                                sb22 = s22.text;
                                sb23 = s23.text;
                                sb24 = s24.text;
                                sb25 = s25.text;
                                sb26 = s26.text;

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
                                Translation s7 =   await translator.translate('Service Providers' , to : 'de');
                                Translation s9 =   await translator.translate(' Service Providers 2.0' , to : 'de');
                                Translation s8 =   await translator.translate('Easy payout?' , to : 'de');
                                Translation s10 =   await translator.translate('Direct connect' , to : 'de');
                                Translation s11 =   await translator.translate('to customer' , to : 'de');
                                Translation s12 =   await translator.translate('Stock options &' , to : 'de');
                                Translation s13=   await translator.translate(' prizes' , to : 'de');
                                Translation s14=   await translator.translate('Account' , to : 'de');
                                Translation s15=   await translator.translate('manager' , to : 'de');
                                Translation s16=   await translator.translate(' Job details' , to : 'de');
                                Translation s17=   await translator.translate(' (photos, documents, etc.)' , to : 'de');
                                Translation s18=   await translator.translate(' Payout' , to : 'de');
                                Translation s19=   await translator.translate(' Email Address' , to : 'de');
                                Translation s20=   await translator.translate(' Your Email' , to : 'de');
                                Translation s21=   await translator.translate(' Phone Number' , to : 'de');
                                Translation s22=   await translator.translate(' Telephone' , to : 'de');
                                Translation s23=   await translator.translate(' Name' , to : 'de');
                                Translation s24=   await translator.translate(' Name' , to : 'de');
                                Translation s25=   await translator.translate(' Contact' , to : 'de');
                                Translation s26=   await translator.translate(' Direct connect' , to : 'de');

                                sb1 = s1.text;
                                sb2 = s2.text;
                                sb3 = s3.text;
                                sb4 = s4.text;
                                sb5 = s5.text;
                                sb6 = s6.text;
                                sb7 = s7.text;
                                sb8 = s8.text;
                                sb9 = s9.text;
                                sb10 = s10.text;
                                sb11 = s11.text;
                                sb12 = s12.text;
                                sb13 = s13.text;
                                sb14 = s14.text;
                                sb15 = s15.text;
                                sb16 = s16.text;
                                sb17 = s17.text;
                                sb18 = s18.text;
                                sb19 = s19.text;
                                sb20 = s20.text;
                                sb21 = s21.text;
                                sb22 = s22.text;
                                sb23 = s23.text;
                                sb24 = s24.text;
                                sb25 = s25.text;
                                sb26 = s26.text;

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
                                ss5,
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
                                ss6,
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
                width: w,
                height: 600,
                decoration: const BoxDecoration(
                  color: Color(0xFFE7EBF6),
                 // image: DecorationImage(image: AssetImage('assets/images/background.png' )) ,
                ),
                child:  Row(
                  children: [
                    Container(
                      width: w * 0.45,
                      margin: const EdgeInsets.only(left: 70 , top: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(sb7 , style: TextStyle(fontSize: h * 0.06 , fontWeight: FontWeight.bold), ),
                          SizedBox(height: h * 0.2,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/google_play.png' , width: w * 0.08) ,
                              const SizedBox(width: 20,) ,
                              Image.asset('assets/images/app_store.png' , width: w * 0.08) ,
                            ],
                          )
                        ],
                      ),

                    ) ,
                    Container(
                      width: w * 0.45,

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
                                        SizedBox(width: (w + h) * 0.08,),
                                      Image.asset('assets/images/hand.png' , width: (w + h) * 0.14 , height: (w + h) * 0.12,),
                                    ],
                                  ),
                                  Container(
                                    height: 70,
                                    width: 160,
                                   decoration: const BoxDecoration(
                                     color: Colors.white,
                                     borderRadius: BorderRadius.all(Radius.circular(10))
                                   ),
                                    child: Center(
                                      child: Row(
                                        children: [
                                          const SizedBox(width: 20,),
                                          Image.asset('assets/images/payout.png') ,
                                          const SizedBox(width: 20,),
                                              Text(sb8)
                                        ],
                                      ),
                                    ),
                                  ) ,
                                  // Row(
                                  //   mainAxisAlignment: MainAxisAlignment.start,
                                  //   children: [
                                  //     Container(
                                  //       height: 100,
                                  //       width: 140,
                                  //       decoration: const BoxDecoration(
                                  //           color: Colors.white,
                                  //           borderRadius: BorderRadius.all(Radius.circular(10))
                                  //       ),
                                  //       child: Center(
                                  //         child: Row(
                                  //           children: [
                                  //             Image.asset('assets/images/phone_phone.png') ,
                                  //             const   Text('Easy Payout')
                                  //           ],
                                  //         ),
                                  //       ),
                                  //     ),
                                  //   ],
                                  // )
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
                width: w,
                height: 600,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child:  Row(
                  children: [
                    Container(
                      width: w * 0.3,
                      margin: const EdgeInsets.all(40),
                      child: Column(
                        children: [
                          Image.asset('assets/images/first_phone.png' , width: w * 0.12,) ,
                          const SizedBox(height: 20,) ,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/google_play.png' , width: w * 0.06) ,
                              const SizedBox(width: 20,) ,
                              Image.asset('assets/images/app_store.png' , width: w * 0.06) ,
                            ],
                          )
                        ],
                      ),
                    ) ,
                    Container(
                      width: w * 0.45,
                      margin: const EdgeInsets.only(left: 150 , top: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(sb9 , style: TextStyle(
                              fontWeight: FontWeight.w700 ,
                              fontSize: (w + h) * 0.02
                          ),) ,
                              SizedBox(height: (w + h) * 0.02,),
                        Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: (w + h) * 0.03 ,
                                  height: (w + h) * 0.03 ,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(7)
                                  ),
                                  child: Center(child: Image.asset('assets/images/head.png'),),
                                ),
                                SizedBox(width: (w + h) * 0.002,),
                                   Column(
                                  children: [
                                    Text(sb26 , style: TextStyle(fontWeight: FontWeight.bold),) ,
                                    Text(sb10 , style: TextStyle(fontWeight: FontWeight.bold),) ,
                                  ],
                                )
                              ],
                            ) ,
                            SizedBox(width: (w + h) * 0.06,),
                            Row(
                              children: [
                                Container(
                                  width: (w + h) * 0.03 ,
                                  height: (w + h) * 0.03 ,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(7)
                                  ),
                                  child: Center(child: Image.asset('assets/images/options.png'),),
                                ),
                                SizedBox(width: (w + h) * 0.002,),
                                   Column(
                                  children: [
                                    Text(sb11 , style: TextStyle(fontWeight: FontWeight.bold),) ,
                                    Text(sb12 , style: TextStyle(fontWeight: FontWeight.bold),) ,
                                  ],
                                )
                              ],
                            )
                          ],
                        ) ,
                          SizedBox(height: (w + h) * 0.03,),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: (w + h) * 0.03 ,
                                    height: (w + h) * 0.03 ,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(7)
                                    ),
                                    child: Center(child: Image.asset('assets/images/message.png'),),
                                  ),
                                  SizedBox(width: (w + h) * 0.002,),
                                     Column(
                                    children: [
                                      Text(sb13, style: const TextStyle(fontWeight: FontWeight.bold),) ,
                                    ],
                                  )
                                ],
                              ) ,
                              SizedBox(width: (w + h) * 0.07,),
                              Row(
                                children: [
                                  Container(
                                    width: (w + h) * 0.03 ,
                                    height: (w + h) * 0.03 ,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(7)
                                    ),
                                    child: Center(child: Image.asset('assets/images/account.png'),),
                                  ),
                                  SizedBox(width: (w + h) * 0.002,),
                                     Column(
                                    children: [
                                      Text(sb14 , style: TextStyle(fontWeight: FontWeight.bold),) ,
                                      Text(sb15 , style: TextStyle(fontWeight: FontWeight.bold),) ,
                                    ],
                                  )
                                ],
                              )
                            ],
                          ) ,
                          SizedBox(height: (w + h) * 0.03,),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: (w + h) * 0.03 ,
                                    height: (w + h) * 0.03 ,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(7)
                                    ),
                                    child: Center(child: Image.asset('assets/images/jop.png'),),
                                  ),
                                  SizedBox(width: (w + h) * 0.002,),
                                     Column(
                                    children: [
                                      Text(sb16 , style: TextStyle(fontWeight: FontWeight.bold),) ,
                                      Text(sb17 , style: TextStyle(fontWeight: FontWeight.bold),) ,
                                    ],
                                  )
                                ],
                              ) ,
                              SizedBox(width: (w + h) * 0.03,),
                              Row(
                                children: [
                                  Container(
                                    width: (w + h) * 0.03 ,
                                    height: (w + h) * 0.03 ,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(7)
                                    ),
                                    child: Center(child: Image.asset('assets/images/another_payout.png'),),
                                  ),
                                  SizedBox(width: (w + h) * 0.002,),
                                     Column(
                                    children: [
                                      Text(sb18 , style: TextStyle(fontWeight: FontWeight.bold),) ,
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
              SizedBox(height: (w+h) * 0.02,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: w * 0.02 ,  vertical: h  * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/email.png') ,
                            SizedBox(width: (h+w) *0.003,),
                              Text(sb19)
                          ],
                        ) ,
                        SizedBox(height: (w+h) * 0.01,),
                        Container(
                          height: (h+w) *0.018,
                          width: (h+w) *0.07,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7) ,
                              border:  Border.all(color: Colors.grey)
                          ),
                          child:   TextField(
                            decoration: InputDecoration(
                                prefix: SizedBox(width: 5,),
                                hintText: sb20 ,
                                hintStyle: TextStyle(color: Colors.grey )
                            ) ,
                          ),
                        )
                      ],
                    ) ,
                    SizedBox(width: (w+h) * 0.03,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/phone_icon.png') ,
                            SizedBox(width: (h+w) *0.003,),
                              Text(sb21)
                          ],
                        ) ,
                        SizedBox(height: (w+h) * 0.01,),
                        Container(
                          height: (h+w) *0.018,
                          width: (h+w) *0.07,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7) ,
                              border:  Border.all(color: Colors.grey)
                          ),
                          child:   TextField(
                            decoration: InputDecoration(
                                prefix: SizedBox(width: 5,),
                                hintText: sb22 ,
                                hintStyle: TextStyle(color: Colors.grey )
                            ) ,
                          ),
                        ) ,
                      ],
                    ) ,
                    SizedBox(width: (w+h) * 0.03,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/person.png') ,
                            SizedBox(width: (h+w) *0.003,),
                             Text(sb23)
                          ],
                        ) ,
                        SizedBox(height: (w+h) * 0.01,),
                        Container(
                          height: (h+w) *0.018,
                          width: (h+w) *0.07,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7) ,
                              border:  Border.all(color: Colors.grey)
                          ),
                          child:   TextField(
                            decoration: InputDecoration(
                                prefix: SizedBox(width: 5,),
                                hintText: sb24 ,
                                hintStyle: TextStyle(color: Colors.grey )
                            ) ,
                          ),
                        )
                      ],
                    ) ,
                    SizedBox(width: (w+h) * 0.01,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: (w+h) * 0.02,),
                        ElevatedButton(
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all<Size>(
                                  Size(120, 40)
                              ) ,
                              backgroundColor:  MaterialStateProperty.all<Color>(
                                  Colors.black) ,
                            ),
                            onPressed: (){

                            }, child: SizedBox(
                          width: 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/contact.png' , width: 10 , height: 10,) ,
                              SizedBox(width: 8,),
                                Text( sb25, style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        )),
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
