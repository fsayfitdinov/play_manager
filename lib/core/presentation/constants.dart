import 'package:flutter/material.dart';

// colors that we use in our app
const kMainColor = Color(0xff172b4d);
const kHintColor = Color.fromRGBO(125, 125, 125, 1);

const kMainGradient = LinearGradient(
  colors: [
    Color(0xff1488cc),
    kMainColor,
  ],
);

const kGreyGradient = LinearGradient(
  colors: [
    Color.fromRGBO(229, 229, 229, 1),
    Color.fromRGBO(229, 229, 229, 1),
  ],
);

// Text Styles
const TextStyle kH1TextStyle = TextStyle(
  fontSize: 48,
  fontWeight: FontWeight.w700,
  letterSpacing: 0.22,
);

const TextStyle kH2TextStyle = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w600,
  letterSpacing: 0.18,
);

final TextStyle kH3TextStyle = kH2TextStyle.copyWith(
  fontSize: 20,
  color: Colors.black,
  letterSpacing: 0.14,
);

const TextStyle kHeadlineTextStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
);

const TextStyle kSubHeadTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  color: kMainColor,
  letterSpacing: 0.44,
);

const TextStyle kSecondaryBodyTextStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  color: kMainColor,
  // height: 1.5,
);

const TextStyle kButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 17,
  fontWeight: FontWeight.w600,
);

const TextStyle kCaptionTextStyle = TextStyle(
  color: Color.fromRGBO(86, 86, 86, 1),
  fontSize: 15,
  fontWeight: FontWeight.w400,
);

const TextStyle kHintStyle = TextStyle(
  color: kHintColor,
  fontWeight: FontWeight.w300,
);

// padding
const double kDefaultPadding = 20.0;

const EdgeInsets kTextFieldPadding = EdgeInsets.symmetric(
  horizontal: kDefaultPadding,
  vertical: kDefaultPadding,
);

const Duration kTimerDuration = Duration(minutes: 5);
