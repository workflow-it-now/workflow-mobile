class WorkflowItemStep {
  WorkflowItemStep({this.number, this.title});

  final int number;
  final String title;
}

class WorkflowItem {
  WorkflowItem(
      {this.number,
      this.title,
      this.breadcrumbsTitle,
      this.description,
      this.steps});

  final int number;
  final String title;
  final String breadcrumbsTitle;
  final String description;
  final List<WorkflowItemStep> steps;
}
