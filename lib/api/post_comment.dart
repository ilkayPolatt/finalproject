import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_finalproje/api/api.dart';
import 'package:flutter_application_finalproje/const/doctor_const.dart';
import 'package:flutter_application_finalproje/view/doctor_login.dart';

class PostComment extends StatefulWidget {
  const PostComment({super.key});

  @override
  State<PostComment> createState() => _PostCommentState();
}

class _PostCommentState extends State<PostComment> {
  final double fontsize40 = 40;
  final double fontsize28 = 28;
  final double fontsize15 = 15;
  final double containerHeight5_2 = 5.2;
  final double containerwidth1_15 = 1.15;
  final double containerwidth1 = 1;
  final double containerheight7 = 7;
  final double width6 = 6;
  final double height13 = 13;
  final double width5_2 = 5.2;
  final double height40 = 40;
  final double fonsize = 15;
  final double height5 = 5;
  final double LineHeight800 = 800;
  List<Api>? _itemsModels;
  @override
  void initState() {
    super.initState();
    getpost();
  }

  Future<void> getpost() async {
    final baglanti =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');
    var gelendeger = baglanti.statusCode;
    if (baglanti.statusCode == HttpStatus.ok) {
      final veri = baglanti.data;
      if (veri is List)
        setState(() {
          _itemsModels = veri.map((e) => Api.fromJson(e)).toList();
          TextStyle(fontSize: 15);
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: DoctorConst.borderRadiusCircular40,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: AppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => DoctorLogin(),
                    ));
                  },
                  icon: Icon(Icons.arrow_back_ios_new_rounded)),
              title: Text(DoctorConst.textListTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(color: DoctorConst.colorWhite)),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.mail_outlined)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_none_outlined))
              ],
            )),
        body: ListView.builder(
            itemCount: _itemsModels?.length ?? 0,
            itemBuilder: (context, index) {
              return Padding(
                padding: DoctorConst.paddingAll10,
                child: Container(
                  height: MediaQuery.of(context).size.height / height5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(border: Border.all(width: 0.5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(DoctorConst.textListCalendar,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.copyWith(
                                      color: DoctorConst.colorBlack,
                                      fontWeight: FontWeight.w400,
                                      fontSize: fontsize15)),
                          Row(
                            children: [
                              CircleAvatar(
                                maxRadius: 5,
                                backgroundColor: DoctorConst.colorGreen,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(DoctorConst.textOnline,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      ?.copyWith(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400,
                                          fontSize: fontsize15)),
                              Icon(Icons.more_vert),
                            ],
                          ),
                        ],
                      ),
                      _line(context),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height:
                                MediaQuery.of(context).size.height / height13,
                            width: MediaQuery.of(context).size.width / width6,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: DoctorConst.colorWhite,
                                border: Border.all(
                                    width: 4, color: DoctorConst.colorGreen)),
                            child: Image.asset(DoctorConst.imageDoctorApi),
                          ),
                          Text(
                            _itemsModels?[index].title ?? '',
                            style: TextStyle(
                                fontSize: 10,
                                color: DoctorConst.colorBlue,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.location_on,
                            color: DoctorConst.colorBlue,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _line(context),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: DoctorConst.colorBlue,
                              ),
                              Text(DoctorConst.textMrJoe),
                            ],
                          ),
                          ClipRRect(
                            borderRadius: DoctorConst.borderRadiusCircular50,
                            child: SizedBox(
                              height:
                                  MediaQuery.of(context).size.height / height40,
                              width:
                                  MediaQuery.of(context).size.width / width5_2,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  DoctorConst.textComplete,
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        DoctorConst.colorTransparent),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  Container _line(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / LineHeight800,
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
    );
  }
}
