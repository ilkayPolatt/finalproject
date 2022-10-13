import 'package:flutter/material.dart';
import 'package:flutter_application_finalproje/const/doctor_const.dart';
import 'package:flutter_application_finalproje/view/doctor_login.dart';

class DoctorInfo extends StatefulWidget {
  const DoctorInfo({super.key});

  @override
  State<DoctorInfo> createState() => _DoctorInfoState();
}

class _DoctorInfoState extends State<DoctorInfo> {
  final controller = PageController(initialPage: 0);
  final double fontSize45 = 45;
  final double fontSize18 = 18;
  final double imageSize = 3;
  final double height3_5 = 3.5;
  final double height1_5 = 1.5;
  final double height1_1 = 1.1;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            MaterialButton(
              onPressed: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => DoctorLogin(),
              )),
              child: Padding(
                padding: DoctorConst.paddingTop20,
                child: Text(DoctorConst.textSkip,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: DoctorConst.colorBlue)),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: DoctorConst.paddingTop20RightLeft12,
          child: PageView(
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) {
              Text('Page ${index + 1}');
            },
            controller: controller,
            children: [
              _pageViewFirstPage(context),
              _pageViewSecondPageImage(context),
              _pageViewThriPage(context)
            ],
          ),
        ));
  }

  Padding _pageViewThriPage(BuildContext context) {
    return Padding(
      padding: DoctorConst.paddingRightLeft28,
      child: Container(
        height: MediaQuery.of(context).size.height / height1_1,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height / height1_5,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Image.asset(
                          DoctorConst.imageThriPage,
                          height:
                              MediaQuery.of(context).size.height / height3_5,
                        ),
                        Text(
                          DoctorConst.textInfoTitle,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  color: DoctorConst.colorBlack,
                                  fontWeight: FontWeight.w700,
                                  fontSize: fontSize45),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          DoctorConst.textInfoExplantion,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  color: DoctorConst.colorTransparent,
                                  fontSize: fontSize18),
                        ),
                      ],
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  onPressed: () => controller.nextPage(
                      duration: Duration(seconds: 1), curve: Curves.easeInOut),
                  child: Text(DoctorConst.textNext,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: DoctorConst.colorBlack)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding _pageViewSecondPageImage(BuildContext context) {
    return Padding(
      padding: DoctorConst.paddingRightLeft28,
      child: Container(
        height: MediaQuery.of(context).size.height / height1_1,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height / height1_5,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Image.asset(
                          DoctorConst.imageSecondPage,
                          height:
                              MediaQuery.of(context).size.height / height3_5,
                        ),
                        Text(
                          DoctorConst.textInfoTitle,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  color: DoctorConst.colorBlack,
                                  fontWeight: FontWeight.w700,
                                  fontSize: fontSize45),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          DoctorConst.textInfoExplantion,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  color: DoctorConst.colorTransparent,
                                  fontSize: fontSize18),
                        ),
                      ],
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  onPressed: () => controller.nextPage(
                      duration: Duration(seconds: 1), curve: Curves.easeInOut),
                  child: Text(DoctorConst.textNext,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: DoctorConst.colorBlack)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _pageViewFirstPage(BuildContext context) {
    final double height3_5 = 3.5;
    final double height1_5 = 1.5;
    final double height1_1 = 1.1;
    return Padding(
      padding: DoctorConst.paddingRightLeft28,
      child: Container(
        height: MediaQuery.of(context).size.height / height1_1,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height / height1_5,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Image.asset(
                          DoctorConst.imageFirstPage,
                          height:
                              MediaQuery.of(context).size.height / height3_5,
                        ),
                        Text(
                          DoctorConst.textInfoTitle,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  color: DoctorConst.colorBlack,
                                  fontWeight: FontWeight.w700,
                                  fontSize: fontSize45),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          DoctorConst.textInfoExplantion,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  color: DoctorConst.colorTransparent,
                                  fontSize: fontSize18),
                        ),
                      ],
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  onPressed: () => controller.nextPage(
                      duration: Duration(seconds: 1), curve: Curves.easeInOut),
                  child: Text(DoctorConst.textNext,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: DoctorConst.colorBlack)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
