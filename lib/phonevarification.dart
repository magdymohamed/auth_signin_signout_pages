import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class Phonevarify extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PhonevarifyState();
  }
}

class PhonevarifyState extends State<Phonevarify> {
  bool _onEditing = true;
  String _code;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Color(0xfff2f5fc),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Column(
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
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xfff2f5fc),
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width / 2),
                        ),
                        width: 150,
                        height: 150,
                        child: Image(
                          image: AssetImage('lib/assets/Mobilelogin.png'),
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
                        Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  "قم بإدخال الكود المرسل على جوال رقم",
                                  style: TextStyle(
                                      fontSize: 16,
                                      letterSpacing: 2,
                                      fontFamily: 'cairo',
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "01091189936",
                          style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 4,
                              fontFamily: 'cairo',
                              fontWeight: FontWeight.w900,
                              color: Color(0xff00BED6)),
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
                      VerificationCode(
                        textStyle:
                        TextStyle(fontSize: 30.0, color: Color(0xff0092A5)),
                        keyboardType: TextInputType.phone,
                        length: 4,
                        itemSize: 60,
                        autofocus: true,
                        // clearAll is NOT required, you can delete it
                        // takes any widget, so you can implement your design
                        onCompleted: (String value) {
                          setState(() {
                            _code = value;
                          });
                        },
                        onEditing: (bool value) {
                          _onEditing = value;
                        },
                      ),
                      SizedBox(
                        height: 55,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              " تحقق ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'cairo',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Container(
                              width: 150,
                              decoration: BoxDecoration(
                                color: Color(0xff00BED6),
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
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("قم بإرسال الكود مرة أخرى",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'cairo',
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0092A5),
                                decoration: TextDecoration.underline,
                              )),
                          SizedBox(
                            width: 8,
                          ),
                          Text("لم تصلك رسالة ؟",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'cairo',
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
