import 'package:flutter/material.dart';

class SmartHorizontalListView extends StatefulWidget {
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final EdgeInsets padding;
  final Function onListEndReached;
  const SmartHorizontalListView(
      {super.key,
      required this.itemCount,
      required this.itemBuilder,
      required this.padding,
      required this.onListEndReached});

  @override
  State<SmartHorizontalListView> createState() =>
      _SmartHorizontalListViewState();
}

class _SmartHorizontalListViewState extends State<SmartHorizontalListView> {
  var scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels == 0) {
          debugPrint("Start of the list reached");
        } else {
          debugPrint("End of the list reached");
          widget.onListEndReached();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: widget.itemBuilder,
      controller: scrollController,
      padding: widget.padding,
      itemCount: widget.itemCount,
      scrollDirection: Axis.horizontal,
    );
  }
}
