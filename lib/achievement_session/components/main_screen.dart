import 'package:flutter/material.dart';

import '../../pages/const.dart';
import '../../pages/desktop_menu.dart';
import '../../pages/home_page.dart';
import '../../pages/mobile_menu.dart';
import '../../pages/responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

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
                      color: Colors.black,
                      fontSize: 20,
                    )),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 80),
              child: TopBarContents(),
            ),
      drawer: const MenuDrawer(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Container(
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: defaultPadding),
                Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...children,
                        // our footer
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
