import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mh_app/Contact%20Form/contact_form.dart';
import 'package:mh_app/pages/const.dart';

void main() {
  runApp(const ContactPage1());
}

class ContactPage1 extends StatelessWidget {
  const ContactPage1({Key? key}) : super(key: key);

  // This is the root of my app.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MH app',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: const TextStyle(color: bodyTextColor),
              bodyText2: const TextStyle(color: bodyTextColor),
            ),
      ),
      home: const ContactPage(),
    );
  }
}
