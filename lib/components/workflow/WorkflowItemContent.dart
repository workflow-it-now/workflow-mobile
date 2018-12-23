import 'package:flutter/material.dart';
import 'package:workflow/models/WorkflowItem.dart';
import 'package:workflow/resources/R.dart';

class WorkflowItemContent extends StatelessWidget {
  WorkflowItemContent(this.item);

  final WorkflowItem item;

  @override
  Widget build(BuildContext context) {
    var widgets = <Widget>[
      description,
      title,
      description,
      stepsTitle,
    ];

    widgets.addAll(steps);

    return Expanded(
        child: SingleChildScrollView(
            child: ConstrainedBox(
                constraints: BoxConstraints(),
                child: Column(children: widgets))));
  }

  Row get title {
    var title = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 20, left: 16, right: 16),
          child: Text(
            item.title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'JosefinSans',
                fontWeight: FontWeight.normal),
          ),
        ),
      ],
    );
    return title;
  }

  Row get description {
    var description = Row(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Text(
              item.description,
              maxLines: 20,
              style: TextStyle(
                  color: Colors.white.withAlpha(240),
                  fontSize: 18,
                  fontFamily: 'JosefinSans',
                  fontWeight: FontWeight.w200),
              softWrap: true,
            ),
          ),
        ),
      ],
    );
    return description;
  }

  Container get stepsTitle {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 8, bottom: 16),
      child: Text(
        "Steps",
        style: TextStyle(
            fontSize: 18,
            color: R.color.secondaryText,
            fontFamily: 'JosefinSans',
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Iterable<Container> get steps {
    var steps = item.steps.map((step) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 18,
              child: Text(
                step.number.toString() + ". ",
                style: TextStyle(
                    fontSize: 16,
                    color: R.color.secondaryText,
                    fontFamily: 'JosefinSans',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Text(
                step.title,
                style: TextStyle(
                    fontSize: 17,
                    color: R.color.secondaryText,
                    fontFamily: 'JosefinSans',
                    fontWeight: FontWeight.w200),
              ),
            ),
          ],
        ),
      );
    });
    return steps;
  }
}
