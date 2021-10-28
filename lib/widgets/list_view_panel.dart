import 'package:flutter/material.dart';

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class ListViewPanel extends StatelessWidget {
  const ListViewPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyBehavior(),
      child: Container(
        height: 250,
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            CardView(
              color: Colors.black,
            ),
            CardView(
              color: Colors.green,
            ),
            CardView(
              color: Colors.black,
            ),
            CardView(
              color: Colors.green,
            ),
            CardView(
              color: Colors.black,
            ),
            CardView(
              color: Colors.green,
            ),
            CardView(
              color: Colors.black,
            ),
            CardView(
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

class CardView extends StatelessWidget {
  final Color color;

  const CardView({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      height: 200,
      width: 180,
    );
  }
}
