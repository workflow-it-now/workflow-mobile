import 'package:flutter/material.dart';
import 'package:workflow/models/Workflow.dart';
import 'package:workflow/resources/R.dart';

class WorkflowListItem extends StatelessWidget {
  WorkflowListItem(this.item);

  final Workflow item;

  static const COMPONENT_HEIGHT = 56;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Row(
        children: <Widget>[
          icon,
          Expanded(
            child: Column(
              children: <Widget>[title, description],
            ),
          )
        ],
      ),
    );
  }

  Widget get title {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 24, top: 8, right: 16, bottom: 12),
        child: Text(
          item.title,
          style: TextStyle(fontSize: 20, color: R.color.text),
        ),
      ),
    );
  }

  Widget get description {
    return Wrap(
      children: <Widget>[
        Container(
          child: Text(
            item.description,
            maxLines: 2,
            style: TextStyle(fontSize: 18, color: R.color.secondaryText),
          ),
        ),
      ],
    );
  }

  Widget get icon {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 4, bottom: 4),
      width: COMPONENT_HEIGHT.toDouble(),
      height: COMPONENT_HEIGHT.toDouble(),
      child: Image(
          image: AssetImage('images/welcome-onboard.jpg', package: 'my_icons')),
    );
  }
}
