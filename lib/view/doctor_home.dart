import 'package:flutter/material.dart';
import 'package:flutter_application_finalproje/const/doctor_const.dart';

class DoctorHome extends StatelessWidget {
  const DoctorHome({super.key});

  final double containerwidth1 = 1;
  final double containerheight7 = 7;
  final double fontsize28 = 28;
  final double fontsize17 = 17;
  final double height5_5 = 5.5;
  final double width2_4 = 2.4;
  final double height3 = 3;
  final double width25 = 25;
  final double fontsize13 = 13;
  final double fontsize14 = 14;
  final double fontsize11 = 11;
  final double fontsize40 = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: DoctorConst.paddingTop8RightLeft15,
          child: _containerHomeTopCliprRect(context),
        ),
        _rowCardCalendarFile(context),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _cardRequests(context),
            DoctorConst.sizedBoxWidht15,
            _cardNotificationMessage(context),
          ],
        ),
        Padding(
          padding: DoctorConst.paddingTop20,
        ),
        _rowTextDiscover(context),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ContainerImageText(
              height5_5: height5_5,
              width2_4: width2_4,
              fontsize14: fontsize14,
              image: DoctorConst.imageHome,
              text: DoctorConst.textCoronavirus,
            ),
            DoctorConst.sizedBoxWidht15,
            ContainerImageText(
                height5_5: height5_5,
                width2_4: width2_4,
                fontsize14: fontsize14,
                image: DoctorConst.imageHomeTwo,
                text: DoctorConst.textCoronavirusData)
          ],
        )
      ]),
    ));
  }

  Row _rowTextDiscover(BuildContext context) {
    return Row(
      children: [
        DoctorConst.sizedBoxwidht36,
        Text(
          DoctorConst.textDiscover,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: DoctorConst.colorBlack,
                fontWeight: FontWeight.w700,
              ),
        ),
      ],
    );
  }

  SizedBox _cardRequests(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / height5_5,
      width: MediaQuery.of(context).size.width / width2_4,
      child: Card(
        color: DoctorConst.colorWhite,
        child: Stack(
          children: [
            Padding(
              padding: DoctorConst.paddingRightLeft10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.messenger_outline_sharp,
                    color: DoctorConst.colorBlue,
                    size: fontsize40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DoctorConst.textAdministration,
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: DoctorConst.colorBlack,
                            fontWeight: FontWeight.w500,
                            fontSize: fontsize13),
                      ),
                      DoctorConst.sizedBoxHeigt10,
                      Text(
                        DoctorConst.textCardProblem,
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: DoctorConst.colorwhite70,
                            fontWeight: FontWeight.w400,
                            fontSize: fontsize11),
                      ),
                      DoctorConst.sizedBoxHeigt10,
                      Container(
                        height: height3,
                        width: width25,
                        color: DoctorConst.colorBlue,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox _cardNotificationMessage(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / height5_5,
      width: MediaQuery.of(context).size.width / width2_4,
      child: Card(
        color: DoctorConst.colorWhite,
        child: Stack(
          children: [
            Padding(
              padding: DoctorConst.paddingRightLeft10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.edit_notifications_rounded,
                    color: DoctorConst.colorBlue,
                    size: fontsize40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DoctorConst.textMessageNotification,
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: DoctorConst.colorBlack,
                            fontWeight: FontWeight.w500,
                            fontSize: fontsize13),
                      ),
                      DoctorConst.sizedBoxHeigt10,
                      Text(
                        DoctorConst.textContactYou,
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: DoctorConst.colorwhite70,
                            fontWeight: FontWeight.w400,
                            fontSize: fontsize11),
                      ),
                      DoctorConst.sizedBoxHeigt10,
                      Container(
                        height: height3,
                        width: width25,
                        color: DoctorConst.colorBlue,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _rowCardCalendarFile(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / height5_5,
          width: MediaQuery.of(context).size.width / width2_4,
          child: _cardBlueCalendarTextLine(context),
        ),
        DoctorConst.sizedBoxWidht15,
        SizedBox(
          height: MediaQuery.of(context).size.height / height5_5,
          width: MediaQuery.of(context).size.width / width2_4,
          child: _cardWhiteFileTextLine(context),
        ),
      ],
    );
  }

  Card _cardWhiteFileTextLine(BuildContext context) {
    return Card(
      color: DoctorConst.colorWhite,
      child: Stack(
        children: [
          Padding(
            padding: DoctorConst.paddingRightLeft10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.insert_drive_file_outlined,
                  color: DoctorConst.colorBlue,
                  size: fontsize40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DoctorConst.textCardTitleBookApp,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: DoctorConst.colorBlack,
                          fontWeight: FontWeight.w500,
                          fontSize: fontsize13),
                    ),
                    DoctorConst.sizedBoxHeigt10,
                    Text(
                      DoctorConst.textCardBlueExplantion,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: DoctorConst.colorwhite70,
                          fontWeight: FontWeight.w400,
                          fontSize: fontsize13),
                    ),
                    DoctorConst.sizedBoxHeigt10,
                    Container(
                      height: height3,
                      width: width25,
                      color: DoctorConst.colorBlue,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Card _cardBlueCalendarTextLine(BuildContext context) {
    return Card(
      color: DoctorConst.colorBlue,
      child: Stack(
        children: [
          Padding(
            padding: DoctorConst.paddingRightLeft10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.calendar_month_outlined,
                  color: DoctorConst.colorWhite,
                  size: fontsize40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DoctorConst.textCardTitleBookApp,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: DoctorConst.colorWhite,
                          fontWeight: FontWeight.w500,
                          fontSize: fontsize13),
                    ),
                    DoctorConst.sizedBoxHeigt10,
                    Text(
                      DoctorConst.textCardBlueExplantion,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: DoctorConst.colorwhite70,
                          fontWeight: FontWeight.w400,
                          fontSize: fontsize13),
                    ),
                    DoctorConst.sizedBoxHeigt10,
                    Container(
                      height: height3,
                      width: width25,
                      color: DoctorConst.colorWhite,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _containerHomeTopCliprRect(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width / 1,
      decoration: BoxDecoration(
          color: DoctorConst.colorWhiteBlue,
          borderRadius: DoctorConst.borderRadiusTopCircular40),
      child: Padding(
        padding: DoctorConst.paddingRightLeft10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _columnTextHelloSeanAndHand(context),
                _rowIconsMailNotification(),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 13,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                color: DoctorConst.colorWhite,
                borderRadius: DoctorConst.borderRadiusCircular15,
              ),
              child: Padding(
                padding: DoctorConst.paddingRightLeft10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _containerWhiteTextIcon(context),
                    _containerRightIconBlue()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _columnTextHelloSeanAndHand(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _textHello(context),
        _rowTextSeanAndHand(context),
      ],
    );
  }

  Icon _containerRightIconBlue() {
    return Icon(
      Icons.arrow_circle_right,
      color: DoctorConst.colorBlue,
      size: 55,
    );
  }

  Column _containerWhiteTextIcon(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(DoctorConst.textAppointment,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: DoctorConst.colorTransparent, fontSize: 13)),
        DoctorConst.sizedBoxHeigt5,
        Text(DoctorConst.textEnterWaitingRoom,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                color: DoctorConst.colorBlack,
                fontSize: 18,
                fontWeight: FontWeight.w700)),
      ],
    );
  }

  Text _textHello(BuildContext context) {
    return Text(
      DoctorConst.textHello,
      style: Theme.of(context).textTheme.headline5?.copyWith(
          color: DoctorConst.colorWhite,
          fontWeight: FontWeight.w500,
          fontSize: fontsize17),
    );
  }

  Row _rowIconsMailNotification() {
    return Row(
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
    );
  }

  Row _rowTextSeanAndHand(BuildContext context) {
    return Row(
      children: [
        Text(
          DoctorConst.textSean,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: DoctorConst.colorWhite,
                fontWeight: FontWeight.w700,
              ),
        ),
        DoctorConst.sizedBoxWidht10,
        _iconHand()
      ],
    );
  }

  Icon _iconHand() {
    return Icon(
      Icons.waving_hand,
      color: DoctorConst.colorAmber,
    );
  }
}

class ContainerImageText extends StatelessWidget {
  const ContainerImageText({
    Key? key,
    required this.height5_5,
    required this.width2_4,
    required this.fontsize14,
    required this.image,
    required this.text,
  }) : super(key: key);

  final double height5_5;
  final double width2_4;
  final double fontsize14;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / height5_5,
      width: MediaQuery.of(context).size.width / width2_4,
      decoration: BoxDecoration(color: DoctorConst.colorWhite),
      child: Padding(
        padding: DoctorConst.paddingAll15,
        child: Column(
          children: [
            Image.asset(image),
            Text(text,
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: DoctorConst.colorBlack,
                    fontWeight: FontWeight.w700,
                    fontSize: fontsize14))
          ],
        ),
      ),
    );
  }
}
