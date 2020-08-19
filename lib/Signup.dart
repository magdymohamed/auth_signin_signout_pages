import 'package:auth_signin_signout_pages/Signupwedgit.dart';
import 'package:auth_signin_signout_pages/conestant.dart';
import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

DateTime selectedDate;

class Signupd extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignupdState();
  }
}

class SignupdState extends State<Signupd> {
  @override
  void initState() {
    Imagee = "lib/assets/pickprofile.jpg";
    selectedDate = DateTime(2000);
    DateOfBirth = "2000-01-01";
    Gender = true;
    loading = false;
    CountryValue = 'Choose --- أختر';
    Countrylist = ['Choose --- أختر'];
    PhoneController.text = "";
    NameController.text = "";
    EmailController.text = "";
    WhatsappController.text = "";
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Color(0xfff2f5fc),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 25,
            ),
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
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xfff2f5fc),
                          borderRadius: BorderRadius.circular(150),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        width: 150,
                        height: 150,
                        child: InkWell(
                          onTap: () async {
                            var Imag = await ImagePicker.pickImage(
                                source: ImageSource.gallery);
                            setState(() {
                              Imagee = Imag.path;
                            });
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(150),
                            child: Image(
                              image: AssetImage(Imagee),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "بيانات الحساب",
                      style: TextStyle(
                          fontSize: 24,
                          letterSpacing: 8,
                          fontFamily: 'cairo',
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
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
                        child: Inputwidget(
                          TextInputType: TextInputType.text,
                          passparametar: "Name",
                          LabelText: "الأسم",
                          Controlerx: NameController,
                        ),
                      ),
                      SIgnupDivider(),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Inputwidget(
                          TextInputType: TextInputType.emailAddress,
                          passparametar: "Email",
                          LabelText: "البريد الإلكتروني",
                          Controlerx: EmailController,
                        ),
                      ),
                      SIgnupDivider(),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Inputwidget(
                          TextInputType: TextInputType.phone,
                          passparametar: "Whatsapp",
                          LabelText: "رقم الواتس اب",
                          Controlerx: WhatsappController,
                        ),
                      ),
                      SIgnupDivider(),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Inputwidget(
                          TextInputType: TextInputType.phone,
                          passparametar: "Phonenumber",
                          LabelText: "رقم الهاتف",
                          Controlerx: PhoneController,
                        ),
                      ),
                      SIgnupDivider(),
                      Column(
                        children: [
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              SignupLabelTitle(Title: "أختر الدولة"),
                            ],
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: DropdownButton<String>(
                              value: CountryValue,
                              icon: Icon(Icons.keyboard_arrow_down),
                              isExpanded: true,
                              iconSize: 22,
                              underline: Container(
                                height: 0,
                                color: Colors.transparent,
                              ),
                              onChanged: (String newValue) {},
                              onTap: () {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                              },
                              items: Countrylist.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Row(
                                    textDirection: TextDirection.ltr,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          value,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'cairo',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          )
                        ],
                      ),
                      SIgnupDivider(),
                      Column(
                        children: [
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              SignupLabelTitle(Title: "أختر المحافظة"),
                            ],
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: DropdownButton<String>(
                              value: GovValue,
                              icon: Icon(Icons.keyboard_arrow_down),
                              isExpanded: true,
                              iconSize: 22,
                              underline: Container(
                                height: 0,
                                color: Colors.transparent,
                              ),
                              onChanged: (String newValue) {},
                              onTap: () {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                              },
                              items: Govlist.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Row(
                                    textDirection: TextDirection.ltr,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          value,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'cairo',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          )
                        ],
                      ),
                      SIgnupDivider(),
                      Column(
                        children: [
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              SignupLabelTitle(Title: "أختر المدينة"),
                            ],
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: DropdownButton<String>(
                              value: AreaValue,
                              icon: Icon(Icons.keyboard_arrow_down),
                              isExpanded: true,
                              iconSize: 22,
                              underline: Container(
                                height: 0,
                                color: Colors.transparent,
                              ),
                              onChanged: (String newValue) {},
                              onTap: () {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                              },
                              items: Arealist.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Row(
                                    textDirection: TextDirection.ltr,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          value,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'cairo',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          )
                        ],
                      ),
                      SIgnupDivider(),
                      Column(
                        children: [
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              SignupLabelTitle(Title: "تاريخ الميلاد"),
                            ],
                          ),
                          Directionality(
                            textDirection: TextDirection.ltr,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: DateTimeField(
                                selectedDate: selectedDate,
                                firstDate: DateTime(1950),
                                onDateSelected: (DateTime date) {
                                  setState(() {
                                    selectedDate = date;
                                    var month, day;
                                    if (date.month < 9) {
                                      month = "0" + date.month.toString();
                                    } else {
                                      month = date.month.toString();
                                    }
                                    if (date.day < 9) {
                                      day = "0" + date.day.toString();
                                    } else {
                                      day = date.day.toString();
                                    }
                                    DateOfBirth = "${date.year}-${month}-$day";
                                  });
                                },
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(12),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 0.0),
                                        borderRadius:
                                            BorderRadius.circular(80)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 0.0),
                                        borderRadius:
                                            BorderRadius.circular(80)),
                                    fillColor: Colors.black),
                                mode: DateFieldPickerMode.date,
                                lastDate: DateTime(2020),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SIgnupDivider(),
                      Column(
                        children: [
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              SignupLabelTitle(Title: "النوع"),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        Gender = true;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Gender
                                            ? Color(0xff00BED6)
                                            : Color(0xfff2f5fc),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          bottomLeft: Radius.circular(30),
                                        ),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            " ذكر ",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'cairo',
                                                fontWeight: FontWeight.bold,
                                                color: Gender
                                                    ? Colors.white
                                                    : Colors.black),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xfff2f5fc),
                                              borderRadius:
                                                  BorderRadius.circular(150),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 2,
                                                  blurRadius: 7,
                                                  offset: Offset(0,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            width: 30,
                                            height: 30,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(150),
                                              child: Image(
                                                image: AssetImage(
                                                    'lib/assets/man.png'),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        Gender = false;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Gender
                                            ? Color(0xfff2f5fc)
                                            : Color(0xff00BED6),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            " انثى ",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'cairo',
                                                fontWeight: FontWeight.bold,
                                                color: Gender
                                                    ? Colors.black
                                                    : Colors.white),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xfff2f5fc),
                                              borderRadius:
                                                  BorderRadius.circular(150),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 2,
                                                  blurRadius: 7,
                                                  offset: Offset(0,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            width: 30,
                                            height: 30,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(150),
                                              child: Image(
                                                image: AssetImage(
                                                    'lib/assets/woman.png'),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
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
                              " تسجيل ",
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
                        height: 15,
                      ),
                      SignupOr(),
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
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                DefaultFotter(),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
