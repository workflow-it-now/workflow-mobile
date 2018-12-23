import 'package:flutter/material.dart';
import 'package:workflow/resources/R.dart';

class WorkflowBreadcrumbsItem extends StatelessWidget {
  WorkflowBreadcrumbsItem(this.number, this.title,
      {this.isFirst = false, this.isLast = false, this.height = 80})
      : super();

  final int number;
  final String title;
  final bool isFirst;
  final bool isLast;
  final double height;

  @override
  Widget build(BuildContext context) {
    var line1 = buildFirstLine();
    var line2 = buildLastLine();
    var label = buildLabel();
    var titleView = buildTitleView();

    var workflowItem = Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 64,
        alignment: Alignment.center,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 0),
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Row(
            children: <Widget>[line1, label, titleView, line2],
          ),
        ),
      ),
    );

    return workflowItem;
  }

  Container buildFirstLine() {
    return Container(
      height: 1.5,
      width: isFirst ? 0 : 20,
      decoration: isFirst
          ? null
          : BoxDecoration(
              color: R.color.accent,
              borderRadius: BorderRadius.all(Radius.circular(2))),
      margin: EdgeInsets.only(right: 16),
    );
  }

  Widget buildLastLine() {
    var line2 = isLast
        ? Container()
        : Expanded(
            child: Container(
              height: 1.5,
              decoration: BoxDecoration(
                  color: R.color.accent,
                  borderRadius: BorderRadius.all(Radius.circular(2))),
              margin: EdgeInsets.only(left: 16),
            ),
          );
    return line2;
  }

  Container buildLabel() {
    return Container(
      child: Container(
        alignment: Alignment.center,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: R.color.accent,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withAlpha(16),
                  offset: Offset(2, 3),
                  blurRadius: 5,
                  spreadRadius: 12)
            ],
            borderRadius: BorderRadius.all(Radius.circular(height / 2))),
        child: Center(
          child: Text(
            number.toString(),
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Container buildTitleView() {
    return Container(
      margin: EdgeInsets.only(left: 16),
      child: Text(
        title,
        style: TextStyle(
            fontFamily: 'JosefinSans',
            color: Colors.white,
            fontSize: 16,
            letterSpacing: 0.2),
      ),
    );
  }
}
