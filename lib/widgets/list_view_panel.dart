import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
              heading: 'The best event',
              date: '07 Februar',
              description: 'some text',
              initialRating: 5,
              number: 1.758,
            ),
            CardView(
              heading: 'Lucky event',
              date: '22 April',
              description: 'some text',
              initialRating: 3,
              number: 2.15,
            ),
            CardView(
              heading: 'The best event',
              date: '03 January',
              description: 'some text',
              initialRating: 4,
              number: 3.14,
            ),
            CardView(
              heading: 'The best event',
              date: '07 Februar',
              description: 'some text',
              initialRating: 5,
              number: 1.758,
            ),
            CardView(
              heading: 'Lucky event',
              date: '22 April',
              description: 'some text',
              initialRating: 3,
              number: 2.15,
            ),
            CardView(
              heading: 'The best event',
              date: '03 January',
              description: 'some text',
              initialRating: 4,
              number: 3.14,
            ),
          ],
        ),
      ),
    );
  }
}

class CardView extends StatefulWidget {
  const CardView(
      {Key? key,
      required this.heading,
      required this.date,
      required this.description,
      required this.initialRating,
      required this.number})
      : super(key: key);

  final String date;
  final String description;
  final String heading;
  final double initialRating;
  final double number;

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  double rating = 3.5;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 13),
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: const Color(0xFF414068),
        borderRadius: BorderRadius.circular(30),
      ),
      height: 300,
      width: 170,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Icon(
            Icons.stars_rounded,
            size: 40,
            color: Color(0xFF43B2E3),
          ),
          Text(
            widget.heading,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            widget.date,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 13,
            ),
          ),
          Text(
            widget.description,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF2A98D5),
            ),
          ),
          RatingBar(
            itemSize: 20,
            initialRating: widget.initialRating,
            direction: Axis.horizontal,
            allowHalfRating: false,
            itemCount: 5,
            ratingWidget: RatingWidget(
              empty: const Icon(
                Icons.star,
                color: Colors.blue,
              ),
              half: const Icon(Icons.star_half),
              full: const Icon(
                Icons.star,
                color: Colors.amber,
              ),
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          Text(
            widget.number.toString() + 'K',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          GestureDetector(
            onTap: null,
            child: Container(
              height: 25,
              width: 80,
              decoration: BoxDecoration(
                color: const Color(0xFF43B2E3),
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: const Center(
                child: Text(
                  'View',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


/**ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                const Color(0xFF43B2E3),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
            onPressed: null,
            child: const Text(
              'View',
              style: TextStyle(
                color: Colors.white,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ), */