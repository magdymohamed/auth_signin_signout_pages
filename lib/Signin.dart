import 'package:auth_signin_signout_pages/Signup.dart';
import 'package:auth_signin_signout_pages/conestant.dart';
import 'package:auth_signin_signout_pages/phonevarification.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Signin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SigninState();
  }
}

class SigninState extends State<Signin> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: seccolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                margin: defaultpadding,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(
                                    MediaQuery.of(context).size.width / 2),
                                bottomRight: Radius.circular(
                                    MediaQuery.of(context).size.width / 2))),
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.width / 2),
                            child: Container(
                              width: 150,
                              height: 150,
                              child: Image(
                                image: AssetImage('lib/assets/Mobilelogin.gif'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "مرحبا بك في عرباوى",
                              style: TextStyle(
                                  fontSize: 24,
                                  letterSpacing: 8,
                                  fontFamily: 'cairo',
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black),
                            ),
                            Text(
                              "يرجى تسجيل الدخول",
                              style: TextStyle(
                                  fontSize: 14,
                                  letterSpacing: 8,
                                  fontFamily: 'cairo',
                                  fontWeight: FontWeight.w900,
                                  color: primarycolor),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              textDirection: TextDirection.ltr,
                              onChanged: (d) {
                                setState(() {
                                  Phone = d;
                                });
                              },
                              decoration: new InputDecoration(
                                  labelText: "رقم الهاتف",
                                  suffixIcon: Icon(
                                    Icons.phone,
                                    color: primarycolor,
                                  ),
                                  labelStyle: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'cairo',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  contentPadding: EdgeInsets.all(12),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent, width: 0.0),
                                      borderRadius: BorderRadius.circular(80)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent, width: 0.0),
                                      borderRadius: BorderRadius.circular(80)),
                                  fillColor: Colors.black),
                            ),
                          ),
                          Divider(
                            height: 1,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Phonevarify()),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    " دخول ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'cairo',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: primarycolor,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 2,
                                          blurRadius: 7,
                                          offset: Offset(
                                              0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    padding: EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  height: 1,
                                  width: MediaQuery.of(context).size.width / 2.8,
                                  child: Container(
                                    color: Colors.black,
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      "أو",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'cairo',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                  child: Container(
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 1,
                                  width: MediaQuery.of(context).size.width / 2.8,
                                  child: Container(
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                width: 50,
                                height: 50,
                                child: Icon(
                                  FontAwesomeIcons.facebookF,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                width: 50,
                                height: 50,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image(
                                    image: AssetImage('lib/assets/google.png'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signupd()),
                                  );
                                },
                                child: Container(
                                  width: 140,
                                  decoration: BoxDecoration(
                                    color: primarycolor,
                                    borderRadius: BorderRadius.circular(50),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 7,
                                        // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: Center(
                                    child: Text(
                                      "مستخدم جديد ؟",
                                      style: TextStyle(
                                          fontSize: 14,
                                          letterSpacing: 5,
                                          fontFamily: 'cairo',
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 7,
                              // changes position of shadow
                            ),
                          ],
                        ),
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            "تجربة التطبيق",
                            style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 5,
                                fontFamily: 'cairo',
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: seccolor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "بالشروط والأحكام",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: primarycolor),
              ),
              Text(
                "استخدامك لهذا التطبيق تعني قبولك",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
