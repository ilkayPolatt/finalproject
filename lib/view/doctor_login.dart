import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_finalproje/const/doctor_const.dart';
import 'package:flutter_application_finalproje/view/doctor_home.dart';
import 'package:flutter_application_finalproje/view/doctor_list.dart';
import 'package:flutter_application_finalproje/api/doctor_record.dart';

class DoctorLogin extends StatelessWidget {
  const DoctorLogin({super.key});
  final double fontsize17 = 17;
  final double imageHeight4 = 4;
  final double height15 = 15;
  final double width2 = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: DoctorConst.paddingTop20RightLeft12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                _imageLogin(context),
                _textLoginTitle(context),
                _textExplantion(context),
              ],
            ),
            _columnTextFieldMailPasswordForgetPassword(context),
            _elevatedButtonLogIn(context),
            _textOrConnectUsing(context),
            _elevatedButtonFacebookGoogle(context),
            DoctorConst.sizedBoxHeigt20,
            _rowTextSignUpDontHave(context),
          ],
        ),
      ),
    );
  }

  ClipRRect _elevatedButtonLogIn(BuildContext context) {
    return ClipRRect(
      borderRadius: DoctorConst.borderRadiusCircular50,
      child: SizedBox(
        height: MediaQuery.of(context).size.height / height15,
        width: MediaQuery.of(context).size.width / width2,
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => DoctorHome(),
              ));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: DoctorConst.colorDarkBlue),
            child: Text(
              DoctorConst.textLogIn,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: DoctorConst.colorWhite, fontWeight: FontWeight.w600),
            )),
      ),
    );
  }

  Column _columnTextFieldMailPasswordForgetPassword(BuildContext context) {
    return Column(
      children: [
        _textFieldPersonMail(),
        _textFieldPassword(),
        _rowTextForgetPassword(context),
      ],
    );
  }

  Row _elevatedButtonFacebookGoogle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _rowElevatedButtonImageTextFacebook(context),
        DoctorConst.sizedBoxwidht20,
        _rowElevatedButtonImageTextGoogle(context),
      ],
    );
  }

  Row _rowTextSignUpDontHave(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _TextDontHave(context),
        DoctorConst.sizedBoxWidht10,
        _textSignUp(context)
      ],
    );
  }

  TextButton _textSignUp(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => DoctorRecord(),
          ));
        },
        child: Text(
          DoctorConst.textSignUp,
          style: Theme.of(context).textTheme.headline5?.copyWith(
              color: DoctorConst.colorDarkBlue,
              fontWeight: FontWeight.w500,
              fontSize: fontsize17),
        ));
  }

  Text _TextDontHave(BuildContext context) {
    return Text(DoctorConst.textDontHaveAn,
        style: Theme.of(context).textTheme.headline5?.copyWith(
            color: DoctorConst.colorBlack,
            fontWeight: FontWeight.w400,
            fontSize: fontsize17));
  }

  SizedBox _rowElevatedButtonImageTextGoogle(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 23,
      width: MediaQuery.of(context).size.width / 3,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            Image.asset(
              DoctorConst.imageLoginGoogle,
            ),
            Text(DoctorConst.textGoogle),
          ],
        ),
        style: ElevatedButton.styleFrom(backgroundColor: DoctorConst.colorRed),
      ),
    );
  }

  SizedBox _rowElevatedButtonImageTextFacebook(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 23,
      width: MediaQuery.of(context).size.width / 3,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            Image.asset(DoctorConst.imageLoginFacebook),
            DoctorConst.sizedBoxWidht10,
            Text(DoctorConst.textFacebook),
          ],
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: DoctorConst.colorFacebookBlue),
      ),
    );
  }

  Image _imageLogin(BuildContext context) {
    return Image.asset(
      DoctorConst.imageLogin,
      fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height / imageHeight4,
    );
  }

  Text _textOrConnectUsing(BuildContext context) {
    return Text(DoctorConst.textOrConnectUsing,
        style: Theme.of(context).textTheme.headline6?.copyWith(
            color: DoctorConst.colorTransparent,
            fontWeight: FontWeight.w400,
            fontSize: fontsize17));
  }

  Row _rowTextForgetPassword(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(DoctorConst.textForgetPassword,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                color: DoctorConst.colorBlack,
                fontWeight: FontWeight.w500,
                fontSize: fontsize17)),
      ],
    );
  }

  TextField _textFieldPassword() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_open_rounded),
        labelText: DoctorConst.textPassword,
        fillColor: DoctorConst.colorWhite,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: DoctorConst.borderRadiusCircular30),
      ),
      maxLength: 20,
    );
  }

  TextField _textFieldPersonMail() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person_outline_outlined),
        labelText: DoctorConst.textJhoneWilliams,
        fillColor: DoctorConst.colorWhite,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: DoctorConst.borderRadiusCircular30),
      ),
      keyboardType: TextInputType.text,
      maxLength: 20,
    );
  }

  Text _textExplantion(BuildContext context) {
    return Text(DoctorConst.textExplantionLogIn,
        style: Theme.of(context).textTheme.headline6?.copyWith(
            color: DoctorConst.colorTransparent,
            fontWeight: FontWeight.w400,
            fontSize: fontsize17));
  }

  Text _textLoginTitle(BuildContext context) {
    return Text(DoctorConst.textWelcomeBack,
        style: Theme.of(context).textTheme.headline4?.copyWith(
            color: DoctorConst.colorBlack, fontWeight: FontWeight.w600));
  }
}
