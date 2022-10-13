import 'package:flutter/material.dart';

class DoctorConst {
//Color
  static const colorWhite = Colors.white;
  static const colorPurple = Colors.purple;
  static const colorRed = Colors.red;
  static const colorBlack = Colors.black;
  static const colorWhiteBlue = Color.fromARGB(255, 83, 143, 221);
  static const colorwhite70 = Color.fromARGB(255, 221, 213, 213);
  static const colorBlue = Color.fromARGB(255, 25, 125, 207);
  static const colorFacebookBlue = Color.fromARGB(255, 14, 89, 150);
  static const colorDarkBlue = Color.fromARGB(255, 68, 71, 214);
  static const colorBlues = Color.fromARGB(255, 157, 182, 231);
  static const colorPink = Colors.pink;
  static const colorGrey = Color.fromARGB(255, 202, 187, 187);
  static const colorgri = Color.fromARGB(255, 203, 227, 241);
  static const colorDarkblue = Color.fromARGB(255, 75, 90, 118);
  static const colorDarkgrey = Color.fromARGB(255, 46, 46, 46);
  static const colorAmber = Colors.amber;
  static const colororange = Colors.orange;
  static const colorGreen = Colors.green;
  static const colorsari = Color.fromARGB(255, 250, 238, 201);
  static const colorTransparent = Color.fromARGB(255, 159, 159, 159);

//images

  static const imageFirstPage = ('assets/images/info/doctorinfo1.png');
  static const imageSecondPage = ('assets/images/info/doctorinfo2.png');
  static const imageThriPage = ('assets/images/info/doctorinfo3.png');
  static const imageLoginGoogle = ('assets/images/info/google.png');
  static const imageLoginFacebook = ('assets/images/info/facebook.png');
  static const imageLogin = ('assets/images/info/doctor_login.png');
  static const imageDoctorApi = ('assets/images/info/doctor.png');
  static const imageHome = ('assets/images/info/home.png');
  static const imageHomeTwo = ('assets/images/info/home2.jpg');
//Text

  static const textInfoTitle = 'Find your best \n Doctors';
  static const textInfoExplantion = 'Book appointment with doctors new you';
  static const textSkip = 'skip';
  static const textNext = 'Next';
  static const textWelcomeBack = 'Welcome Back!';
  static const textExplantionLogIn =
      'Log in to your existant account of Q Allure';
  static const textLogIn = 'LOG IN';
  static const textSignUp = 'SignUp';
  static const textOrConnectUsing = 'Or Connect Using';
  static const textFacebook = 'Facebook';
  static const textGoogle = 'Google';
  static const textDontHaveAn = 'Dont have an account?';
  static const textLetsGetStarted = 'Lets Get Started';
  static const textRegistrationPageExplantion =
      'Creat an accunt to Q Allure to get all features';
  static const textCreate = 'Create';
  static const textAlreadyHaveAccount = 'Already have an account?';
  static const textLoginHere = 'Login here';
  static const textJhoneWilliams = 'Jhone Williams';
  static const textEmail = 'Email';
  static const textPhone = 'Phone';
  static const textPassword = 'Password';
  static const textConfirmPassword = 'Confirm Password';
  static const textForgetPassword = 'Forget Password?';
  static const textListTitle = 'Appointments List';
  static const textListCalendar = 'Sat, 4 April 2020 | 3.15 PM';
  static const textOnline = 'Online';
  static const textMrJoe = ' Mr. Joe Bloggs | Age:31 Y';
  static const textComplete = 'Complete';
  static const textHello = 'Hello,';
  static const textSean = 'Sean!';
  static const textAppointment = 'Appointment Due in 7 mins';
  static const textEnterWaitingRoom = 'Enter The Waiting Room ';
  static const textCardTitleBookApp = 'Book an Appoinment';
  static const textCardBlueExplantion = 'with a GP or Nurse';
  static const textRequestTitle = 'Request a prescription';
  static const textWeAimSameexplantion = 'We aim for Same day service';
  static const textAdministration = 'Administration Requests';
  static const textCardProblem =
      'Requestes for Sick notes driving licence forms feneral admin';
  static const textMessageNotification = 'Message & Notification ';
  static const textContactYou = 'How we Contact You';
  static const textDiscover = 'Discover';
  static const textCoronavirus = 'Coronavirus-World Health Organizatozin';
  static const textCoronavirusData =
      'Coronavirus Update (Live); 1,425,468 Cases and...';

//paading

  static const EdgeInsets paddingTop30RightLeft8 =
      EdgeInsets.only(top: 30, right: 8, left: 8);

  static const EdgeInsets paddingTop20RightLeft12 =
      EdgeInsets.only(top: 20, bottom: 40);
  static const EdgeInsets paddingTop8RightLeft15 = EdgeInsets.only(
    top: 8,
    right: 15,
    left: 15,
  );

  static const EdgeInsets paddingRightLeft28 = EdgeInsets.only(
    right: 28,
    left: 28,
  );
  static const EdgeInsets paddingRightLeft10 = EdgeInsets.only(
    right: 10,
    left: 10,
  );

  static const EdgeInsets paddingTop60 = EdgeInsets.only(top: 60);
  static const EdgeInsets paddingTop20 = EdgeInsets.only(top: 20);
  static const EdgeInsets paddingAll15 = EdgeInsets.all(15);
  static const EdgeInsets paddingAll10 = EdgeInsets.all(10);

//BorderRadius

  static BorderRadius borderRadiusCircular10 = BorderRadius.circular(10);
  static BorderRadius borderRadiusCircular15 = BorderRadius.circular(15);
  static BorderRadius borderRadiusCircular20 = BorderRadius.circular(20);
  static BorderRadius borderRadiusCircular30 = BorderRadius.circular(30);
  static BorderRadius borderRadiusCircular40 = BorderRadius.circular(40);
  static BorderRadius borderRadiusCircular50 = BorderRadius.circular(50);

  static BorderRadius borderRadiusTopCircular40 = BorderRadius.only(
      topLeft: Radius.circular(40), topRight: Radius.circular(40));

  //SizedBox
  static const SizedBox sizedBoxHeigt5 = SizedBox(height: 5);
  static const SizedBox sizedBoxHeigt10 = SizedBox(height: 10);
  static const SizedBox sizedBoxHeigt15 = SizedBox(height: 15);
  static const SizedBox sizedBoxHeigt20 = SizedBox(height: 20);
  static const SizedBox sizedBoxHeigt30 = SizedBox(height: 30);

  static const SizedBox sizedBoxWidht5 = SizedBox(width: 5);
  static const SizedBox sizedBoxWidht10 = SizedBox(width: 10);
  static const SizedBox sizedBoxWidht15 = SizedBox(width: 15);
  static const SizedBox sizedBoxwidht30 = SizedBox(width: 30);
  static const SizedBox sizedBoxwidht20 = SizedBox(width: 20);
  static const SizedBox sizedBoxwidht36 = SizedBox(width: 36);
}
