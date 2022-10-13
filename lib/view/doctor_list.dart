import 'package:flutter/material.dart';
import 'package:flutter_application_finalproje/const/doctor_const.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});
  final double fontsize40 = 40;
  final double fontsize28 = 28;
  final double fontsize15 = 15;
  final double containerHeight5_2 = 5.2;
  final double containerwidth1_15 = 1.15;
  final double containerwidth1 = 1;
  final double containerheight7 = 7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: DoctorConst.paddingAll15,
        child: Column(
          children: [
            ContainerRowIconButtonText(fontsize28: fontsize28),
          ],
        ),
      ),
    );
  }
}

class ContainerRowIconButtonText extends StatelessWidget {
  const ContainerRowIconButtonText({
    Key? key,
    required this.fontsize28,
  }) : super(key: key);

  final double fontsize28;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 7,
      width: MediaQuery.of(context).size.width / 1,
      decoration: BoxDecoration(
          color: DoctorConst.colorWhiteBlue,
          borderRadius: DoctorConst.borderRadiusTopCircular40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_left,
                    color: DoctorConst.colorWhite,
                    size: fontsize28,
                  )),
              Text(DoctorConst.textListTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(color: DoctorConst.colorWhite)),
            ],
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.mail_outline_outlined,
                    color: DoctorConst.colorWhite,
                    size: fontsize28,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notification_important_outlined,
                    color: DoctorConst.colorWhite,
                    size: fontsize28,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
