import 'package:flutter/material.dart';

class TinderCardDemo extends StatefulWidget {
  @override
  _TinderCardDemoState createState() => _TinderCardDemoState();
}

class _TinderCardDemoState extends State<TinderCardDemo> {
  List<String> demoData = ["Card 1", "Card 2", "Card 3", "Card 4", "Card 5"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tinder Card Demo'),
      ),
      body: Center(
        child: TinderSwapCard(
          demoData: demoData,
        ),
      ),
    );
  }
}

class TinderSwapCard extends StatefulWidget {
  final List<String> demoData;

  TinderSwapCard({required this.demoData});

  @override
  _TinderSwapCardState createState() => _TinderSwapCardState();
}

class _TinderSwapCardState extends State<TinderSwapCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: widget.demoData.map((data) {
        return Draggable(
          feedback: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              width: 300,
              height: 400,
              alignment: Alignment.center,
              child: Text(data),
            ),
          ),
          childWhenDragging: Container(),
          onDragEnd: (dragDetails) {
            // Add your logic here for handling card swipe actions
          },
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              width: 300,
              height: 400,
              alignment: Alignment.center,
              child: Text(data),
            ),
          ),
        );
      }).toList(),
    );
  }
}