import 'package:flutter/material.dart';
//general variable

const URL = "http://arbawy.net/3rbawyapp/public/api/";
const primarycolor = Color(0xff00BED6);
const seccolor = Color(0xfff2f5fc);
const errorcolor = Colors.red;
var rightcolor = Colors.green;
const defaultpadding = EdgeInsets.symmetric(
  horizontal: 25,
);

// User Variables
var Phone,
    Name,
    Email,
    Whatsapp,
    PhoneNumber,
    Country,
    Gov,
    Area,
    DateOfBirth,
    Gender = true,
    AccessToken,
    Imagee = "lib/assets/pickprofile.jpg",
    Placholdeer = "lib/assets/pickprofile.jpg",
    Code,
    SocialToken,
    SocialType,
    Varifycode,
    UserMapData;
var CountryValue = 'Choose --- أختر';
List<String> Countrylist = ['Choose --- أختر'];
var GovValue = 'Choose --- أختر';
List<String> Govlist = ['Choose --- أختر'];
var AreaValue = 'Choose --- أختر';
List<String> Arealist = ['Choose --- أختر'];
List<String> Countrylist1 = new List(1000);
List<String> Countrylist2 = new List(1000);
List<String> Countrylist3 = new List(1000);
List Countrylistmaster = new List(1000);
var Country_id, Gov_id, Area_id;
var Lat,Lang;
//login controler
bool loading = false;
TextEditingController PhoneController = TextEditingController();
TextEditingController NameController = TextEditingController();
TextEditingController EmailController = TextEditingController();
TextEditingController WhatsappController = TextEditingController();



