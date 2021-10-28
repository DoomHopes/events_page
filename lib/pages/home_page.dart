import 'package:events_page/widgets/list_view_panel.dart';
import 'package:events_page/widgets/tap_bar_panel.dart';
import 'package:events_page/widgets/seatch_panel.dart';
import 'package:events_page/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2A98D5),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            ClipPath(
              clipper: MyCustomClipper(),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: const Color(0xFF2D2D51),
              ),
            ),
            const Positioned(
              top: 45,
              left: 5,
              right: 5,
              child: SearchPanel(
                icon: Icons.arrow_circle_down_rounded,
                text: 'Events',
              ),
            ),
            const Positioned(
              top: 115,
              left: 20,
              right: 20,
              child: TabBarPanel(),
            ),
            const Positioned(
              top: 300,
              left: 0,
              right: 0,
              child: ListViewPanel(),
            ),
            const Positioned(
              top: 540,
              left: 20,
              child: TitleWidget(
                title: 'View the evets list',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(0, 200)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 600)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
