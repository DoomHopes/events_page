import 'package:events_page/widgets/card_view_panel.dart';
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
      appBar: AppBar(
        title: const Text('Events'),
        leading: const Icon(Icons.arrow_circle_down_rounded),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: const Icon(Icons.search),
          ),
        ],
      ),
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
            /*const Positioned(
              top: 50,
              left: 5,
              right: 5,
              child: SearchPanel(
                icon: Icons.arrow_circle_down_rounded,
                text: 'Events',
              ),
            ),*/
            const Positioned(
              top: 20,
              left: 20,
              right: 20,
              child: TabBarPanel(),
            ),
            const Positioned(
              top: 210,
              left: 0,
              right: 0,
              child: CardViewPanel(),
            ),
            const Positioned(
              top: 465,
              left: 20,
              child: TitleWidget(
                title: 'View the evets list',
              ),
            ),
            const Positioned(
              top: 505,
              left: 20,
              right: 20,
              child: ListViewPanel(),
            )
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
      ..moveTo(0, 150)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 500)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
