import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mh_app/pages/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import '../pages/const.dart';
import '../pages/desktop_menu.dart';
import '../pages/home_page.dart';
import '../pages/mobile_menu.dart';
import '../screens/coding.dart';
import '../screens/knowledge.dart';
import '../screens/skills.dart';

class MySkills extends StatefulWidget {
  const MySkills({Key? key}) : super(key: key);
  @override
  _MySkills createState() => _MySkills();
}

class _MySkills extends State<MySkills> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  final double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              iconTheme: const IconThemeData(
                color: primaryColor,
              ),
              backgroundColor: bodyTextColor,
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
      body: const SideMenu(),
    );
  }
}

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0.0),
      child: Container(
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Column(
                    children: [
                      Skills(),
                      Coding(),
                      Knowledges(),
                      Divider(),
                      SizedBox(height: defaultPadding / 2),
                      TextButton(
                        onPressed: () async {
                          Uri url = Uri.parse(
                              "https://mh-new-portfolio.netlify.app/");

                          await launchUrl(url);
                        },
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                "Web Portfolio",
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                ),
                              ),
                              SizedBox(width: defaultPadding / 2),
                              SvgPicture.asset(
                                "lib/images/view.svg",
                                height: 20,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: defaultPadding),
                        color: primaryColor,
                        child: Row(
                          children: [
                            Spacer(),
                            IconButton(
                              onPressed: () async {
                                Uri url = Uri.parse(
                                    "https:linkedin.com/in/mh-hlatshwayo");
                                await launchUrl(url);
                              },
                              icon: SvgPicture.asset("lib/images/linkedin.svg"),
                            ),
                            IconButton(
                              onPressed: () async {
                                Uri url =
                                    Uri.parse("https://github.com/M-h-sh");
                                await launchUrl(url);
                              },
                              icon: SvgPicture.asset("lib/images/github.svg"),
                            ),
                            IconButton(
                              onPressed: () async {
                                Uri url =
                                    Uri.parse("https://twitter.com/Mthovistor");
                                await launchUrl(url);
                              },
                              icon: SvgPicture.asset("lib/images/twitter.svg"),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
