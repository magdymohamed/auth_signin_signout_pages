import 'package:auth_signin_signout_pages/conestant.dart';
import 'package:flutter/material.dart';

class Inputwidget extends StatelessWidget {

  final  TextInputType;
  var passparametar,LabelText,Controlerx;
  Inputwidget({ this.TextInputType,this.passparametar,this.LabelText,this.Controlerx});
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value){
        if(passparametar=="Name"){
          Name= value;
        }else if(passparametar == "Email"){
          Email = value;
        }else if(passparametar == "Whatsapp"){
          Whatsapp = value;
        }else if(passparametar == "Phonenumber"){
          PhoneNumber = value;
        }
      },
      keyboardType: TextInputType,
      textDirection: TextDirection.ltr,
      controller: Controlerx,
      decoration: new InputDecoration(
          labelText: LabelText,
          labelStyle: TextStyle(
              fontSize: 14,
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
    );
  }
}

class SIgnupDivider extends StatelessWidget {
  const SIgnupDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          height: 1,
          color: Colors.grey,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class SignupOr extends StatelessWidget {
  const SignupOr({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class DefaultFotter extends StatelessWidget {
  const DefaultFotter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff2f5fc),
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
    );
  }
}


class SignupLabelTitle extends StatelessWidget {
  String Title;
  SignupLabelTitle({ this.Title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Text(Title,
          textAlign: TextAlign.right,
          style: TextStyle(
              fontSize: 12,
              fontFamily: 'cairo',
              fontWeight: FontWeight.bold,
              color: Colors.black)),
    );
  }
}
