import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../pages/const.dart';
import '../pages/desktop_menu.dart';
import '../pages/home_page.dart';
import '../pages/mobile_menu.dart';
import '../pages/responsive.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

final nameController = TextEditingController();
final subjectController = TextEditingController();
final emailController = TextEditingController();
final messageController = TextEditingController();
Future sendEmail() async {
  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send-form");
  const serviceId = "service_2lb12dz";
  const templateId = "template_70xa4y9";
  const publicKey = "paYQE_r50COzEtz0O";
  final response = await http.post(
    url,
    headers: {'origin': 'http://localhost', 'Content-Type': 'application/json'},
    body: json.encode({
      "service_id": serviceId,
      "template_id": templateId,
      "user_id": publicKey,
      "template_params": {
        "name": nameController.text,
        "subject": subjectController.text,
        "message": messageController.text,
        "user_email": emailController.text,
      }
    }),
  );

  return response.statusCode;
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              iconTheme: const IconThemeData(
                color: primaryColor,
              ),
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              title: TextButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: const Text('MH Portfolio',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 20,
                    )),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 80),
              child: TopBarContents(),
            ),
      drawer: const MenuDrawer(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 40, 25, 0),
        child: Form(
          child: Column(
            children: [
              const Text(
                "Contact Form",
                style: TextStyle(
                    color: bodyTextColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelStyle: TextStyle(
                      color: bodyTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  icon: Icon(Icons.account_circle, color: bodyTextColor),
                  hintText: 'Name',
                  labelText: 'Name',
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: subjectController,
                decoration: const InputDecoration(
                  labelStyle: TextStyle(
                      color: bodyTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  icon: Icon(Icons.subject_rounded, color: bodyTextColor),
                  hintText: 'Subject',
                  labelText: 'Subject',
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelStyle: TextStyle(
                      color: bodyTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  icon: Icon(
                    Icons.email,
                    color: bodyTextColor,
                  ),
                  hintText: 'Email',
                  labelText: 'Email',
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: messageController,
                decoration: const InputDecoration(
                  labelStyle: TextStyle(
                      color: bodyTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  icon: Icon(Icons.message, color: bodyTextColor),
                  hintText: 'Message',
                  labelText: 'Message',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(primaryColor)),
                onPressed: () async {
                  sendEmail();
                },
                child: const Text(
                  "Send",
                  style: TextStyle(color: bodyTextColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
