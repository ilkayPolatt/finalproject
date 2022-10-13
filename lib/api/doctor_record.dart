import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_finalproje/api/api.dart';
import 'package:flutter_application_finalproje/const/doctor_const.dart';
import 'dart:io';

import 'package:flutter_application_finalproje/view/doctor_login.dart';

class DoctorRecord extends StatefulWidget {
  const DoctorRecord({super.key});

  @override
  State<DoctorRecord> createState() => _DoctorRecordState();
}

class _DoctorRecordState extends State<DoctorRecord> {
  TextEditingController _textTitleController = TextEditingController();
  TextEditingController _textBodyController = TextEditingController();
  TextEditingController _textIdController = TextEditingController();
  TextEditingController _textUserIdController = TextEditingController();
  TextEditingController _textPasswordController = TextEditingController();

  final double height15 = 15;
  final double width2 = 2;

  late final Dio _dio;

  final String _baseUrl = 'https://jsonplaceholder.typicode.com/';

  bool _isLoading = false;

  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  void _isLoadingCheck() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> insertApi(Api data) async {
    _isLoadingCheck();
    final response = await _dio.post('posts', data: data);
    if (response.statusCode == HttpStatus.created) {
      print('Kayıt Tamamlandı!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DoctorConst.colorWhite,
      body: Padding(
        padding: DoctorConst.paddingTop20RightLeft12,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _rowIconLeft(),
              _rowTextTitle(context),
              DoctorConst.sizedBoxHeigt10,
              _textExplantion(),
              DoctorConst.sizedBoxHeigt30,
              _textFieldPerson(),
              _textFieldEmail(),
              _textFieldPhone(),
              _textFieldPssword(),
              _textFieldConfirmPassword(),
              DoctorConst.sizedBoxHeigt30,
              _elevatedButtonCreat(context),
              DoctorConst.sizedBoxHeigt30,
              DoctorConst.sizedBoxHeigt30,
              _rowAccountLogin(context),
            ],
          ),
        ),
      ),
    );
  }

  ClipRRect _elevatedButtonCreat(BuildContext context) {
    return ClipRRect(
      borderRadius: DoctorConst.borderRadiusCircular50,
      child: SizedBox(
        height: MediaQuery.of(context).size.height / height15,
        width: MediaQuery.of(context).size.width / width2,
        child: ElevatedButton(
            onPressed: _isLoading
                ? null
                : () {
                    if (_textTitleController.text.isNotEmpty &&
                        _textBodyController.text.isNotEmpty &&
                        _textIdController.text.isNotEmpty) {
                      final model = Api(
                          title: _textTitleController.text,
                          body: _textBodyController.text,
                          userId: int.tryParse(_textIdController.text));
                      insertApi(model);
                    }
                  },
            style: ElevatedButton.styleFrom(
                backgroundColor: DoctorConst.colorDarkBlue),
            child: Text(
              DoctorConst.textCreate,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: DoctorConst.colorWhite, fontWeight: FontWeight.w600),
            )),
      ),
    );
  }

  Row _rowAccountLogin(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            DoctorConst.textAlreadyHaveAccount,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                color: DoctorConst.colorBlack, fontWeight: FontWeight.w600),
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              DoctorConst.textLoginHere,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: DoctorConst.colorBlue, fontWeight: FontWeight.w600),
            ))
      ],
    );
  }

  TextField _textFieldConfirmPassword() {
    return TextField(
      controller: _textIdController,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock_open_rounded),
        labelText: DoctorConst.textConfirmPassword,
        fillColor: DoctorConst.colorWhite,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: DoctorConst.borderRadiusCircular30),
      ),
      maxLength: 20,
    );
  }

  TextField _textFieldPssword() {
    return TextField(
      controller: _textTitleController,
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

  TextField _textFieldPhone() {
    return TextField(
      controller: _textBodyController,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.phone_android_sharp),
        labelText: DoctorConst.textPhone,
        fillColor: DoctorConst.colorWhite,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: DoctorConst.borderRadiusCircular30),
      ),
      maxLength: 11,
      keyboardType: TextInputType.number,
    );
  }

  TextField _textFieldEmail() {
    return TextField(
      controller: _textUserIdController,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail_outline),
        labelText: DoctorConst.textEmail,
        fillColor: DoctorConst.colorWhite,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: DoctorConst.borderRadiusCircular30),
      ),
      maxLength: 20,
      keyboardType: TextInputType.text,
    );
  }

  TextField _textFieldPerson() {
    return TextField(
      controller: _textPasswordController,
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

  Row _rowIconLeft() {
    return Row(
      children: [
        _iconLeft(),
      ],
    );
  }

  Row _rowTextTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _textTitleStarted(context),
      ],
    );
  }

  Text _textExplantion() {
    return Text(
      DoctorConst.textRegistrationPageExplantion,
      style: TextStyle(fontSize: 16),
    );
  }

  Text _textTitleStarted(BuildContext context) {
    return Text(
      DoctorConst.textLetsGetStarted,
      style: Theme.of(context).textTheme.headline4?.copyWith(
          color: DoctorConst.colorBlack, fontWeight: FontWeight.w600),
    );
  }

  IconButton _iconLeft() {
    return IconButton(
      iconSize: 45,
      icon: const Icon(Icons.arrow_left),
      color: Colors.black,
      onPressed: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DoctorLogin(),
        ));
      },
    );
  }
}
