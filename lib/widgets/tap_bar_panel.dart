import 'package:flutter/material.dart';

class TabBarPanel extends StatefulWidget {
  const TabBarPanel({Key? key}) : super(key: key);

  @override
  State<TabBarPanel> createState() => _TabBarPanelState();
}

class _TabBarPanelState extends State<TabBarPanel>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.blue[300],
      ),
      child: TabBar(
        controller: _tabController,
        tabs: const <Widget>[
          Text(
            'Daily',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'Weekly',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'Monthly',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
