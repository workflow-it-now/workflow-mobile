import 'package:flutter/material.dart';
import 'package:workflow/models/Workflow.dart';
import 'package:workflow/components/workflow-list/WorkflowListItem.dart';

class WorkflowList extends StatelessWidget {
  final List<Workflow> items;

  const WorkflowList({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: items.isNotEmpty
            ? items.map((item) => WorkflowListItem(item)).toList()
            : Center(
                child: Text(
                  "No workflow items",
                  style: TextStyle(color: Colors.white.withAlpha(200)),
                ),
              ));
  }
}
