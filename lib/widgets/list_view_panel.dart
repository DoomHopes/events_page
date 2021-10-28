import 'package:flutter/material.dart';

class ListViewPanel extends StatelessWidget {
  const ListViewPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: ListView(
        children: const <Widget>[
          ListTileWidget(
            title: 'Luxury event',
          ),
          ListTileWidget(
            title: 'The most beautiful event',
          ),
          ListTileWidget(
            title: 'Hing event',
          ),
          ListTileWidget(
            title: 'Some event',
          ),
          ListTileWidget(
            title: 'Luxury event',
          ),
          ListTileWidget(
            title: 'The most beautiful event',
          ),
          ListTileWidget(
            title: 'Hing event',
          ),
          ListTileWidget(
            title: 'Some event',
          ),
        ],
      ),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  final String title;

  const ListTileWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.stars_rounded,
        color: Color(0xFF43B2E3),
      ),
      title: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(fontSize: 18),
      ),
      trailing: const Icon(
        Icons.arrow_forward_rounded,
        color: Colors.white,
      ),
    );
  }
}
