import 'package:workflow/models/WorkflowItem.dart';

class Workflow {
  final int id;
  final String title;
  final String description;
  final List<WorkflowItem> items;

  Workflow(this.id, this.title, this.description, this.items);
}
