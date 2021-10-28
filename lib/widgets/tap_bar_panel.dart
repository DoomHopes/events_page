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
    return Column(
      children: [
        Container(
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
        ),
        SizedBox(
          height: 200,
          width: double.infinity,
          child: TabBarView(
            controller: _tabController,
            children: const <Widget>[
              TabBarItem(
                textLabel: 'last day',
                textStatLabel: '5.19k',
              ),
              TabBarItem(
                textLabel: 'last week',
                textStatLabel: '8.215k',
              ),
              TabBarItem(
                textLabel: 'last month',
                textStatLabel: '9.155k',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TabBarItem extends StatelessWidget {
  final String textLabel;
  final String textStatLabel;

  const TabBarItem(
      {Key? key, required this.textLabel, required this.textStatLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: StatisticsLabel(
            text: textLabel,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: SumWidget(
            text: textStatLabel,
          ),
        ),
      ],
    );
  }
}

class StatisticsLabel extends StatelessWidget {
  final String text;

  const StatisticsLabel({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'The statistics of ',
        ),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class SumWidget extends StatelessWidget {
  final String text;

  const SumWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.blue[300],
      ),
      child: Center(
        child: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 23,
          ),
        ),
      ),
    );
  }
}
