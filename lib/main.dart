import 'package:flutter/material.dart';
import 'package:workflow/components/common/backgrounds/MainBackground.dart';
import 'package:workflow/components/workflow/WorkflowBreadcrumbsItem.dart';
import 'package:workflow/components/workflow/WorkflowItemContent.dart';
import 'package:workflow/models/WorkflowItem.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  final workflowItems = <WorkflowItem>[
    WorkflowItem(
      number: 1,
      title: "Registration",
      breadcrumbsTitle: "Individual entrepreneur",
      description:
          "Simplicity lies in the choice of those tools that we use ourselves, namely the Bank Point and Contour.Elba for reporting. They are well integrated among themselves and At the point of excellent operational support via live chat.\n\nRequired documents: TIN and passport.",
      steps: [
        WorkflowItemStep(
            number: 1,
            title:
                "Follow the link and follow the steps https://e-kontur.ru/Ip/PersonalDataStep"),
        WorkflowItemStep(
            number: 2,
            title: "On the first fill in passport and contact details, TIN"),
        WorkflowItemStep(
            number: 3,
            title: "On the second choose OKVED 62.01 (as the main) and 62.02"),
        WorkflowItemStep(number: 4, title: "On the third choose only USN"),
      ],
    ),
    WorkflowItem(
      number: 2,
      title: "Document processing",
      breadcrumbsTitle: "The tax court",
      description:
          "Unpack the archive from step 5. There should be four documents: an application for registration, an application for the transition to the USN, payment for state duty and instructions. We check once again our data that the tax office at the place of residence was chosen correctly, print and follow the printed instructions (signature and filling in WITH a black pen!).",
      steps: [
        WorkflowItemStep(
            number: 1,
            title:
                "Follow the link and follow the steps https://e-kontur.ru/Ip/PersonalDataStep"),
        WorkflowItemStep(
            number: 2,
            title: "On the first fill in passport and contact details, TIN"),
        WorkflowItemStep(
            number: 3,
            title: "On the second choose OKVED 62.01 (as the main) and 62.02"),
        WorkflowItemStep(number: 4, title: "On the third choose only USN"),
      ],
    ),
    WorkflowItem(
      number: 3,
      title: "Opening Bank accounts",
      breadcrumbsTitle: "The Bank \"Point\"",
      description:
          "If you choose a Point, at some point the Manager will call and clarify your intentions for registration, contact details, scope of activities and other issues related to registration with the Bank. It is necessary to tell that it is necessary to open also a currency account.",
      steps: [
        WorkflowItemStep(
            number: 1,
            title:
                "Follow the link and follow the steps https://e-kontur.ru/Ip/PersonalDataStep"),
        WorkflowItemStep(
            number: 2,
            title: "On the first fill in passport and contact details, TIN"),
        WorkflowItemStep(
            number: 3,
            title: "On the second choose OKVED 62.01 (as the main) and 62.02"),
        WorkflowItemStep(number: 4, title: "On the third choose only USN"),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var workflowItemsMap = workflowItems.asMap();
    var pages = workflowItems.asMap().keys.map((index) {
      var item = workflowItemsMap[index];

      return Column(
        children: <Widget>[
          WorkflowBreadcrumbsItem(
            index + 1,
            item.breadcrumbsTitle,
            isFirst: index == 0,
            isLast: index == workflowItems.length - 1,
          ),
          WorkflowItemContent(item),
        ],
      );
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Workflow",
          style: TextStyle(
              fontFamily: 'JosefinSans', fontSize: 22, letterSpacing: 2),
        ),
      ),
      body: MainBackground(
        child: PageView(
          children: pages,
        ),
      ),
    );
  }
}
