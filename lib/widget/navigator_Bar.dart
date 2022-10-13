import 'package:flutter/material.dart';
import 'package:flutter_application_finalproje/api/doctor_record.dart';
import 'package:flutter_application_finalproje/const/doctor_const.dart';
import 'package:flutter_application_finalproje/view/doctor_home.dart';

class navigatorBarLearnView extends StatefulWidget {
  const navigatorBarLearnView({super.key});

  @override
  State<navigatorBarLearnView> createState() => _navigatorBarLearnViewState();
}

class _navigatorBarLearnViewState extends State<navigatorBarLearnView> {
  int _selectedIndex = 0;

  List<Widget> _bottomList = [
    DoctorHome(),
    DoctorRecord(),
    DoctorHome(),
    DoctorHome(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedItemColor: DoctorConst.colorBlue,
        unselectedItemColor: DoctorConst.colorGrey,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: ''),
        ],
      ),
      body: _bottomList.elementAt(_selectedIndex),
    );
  }
}
